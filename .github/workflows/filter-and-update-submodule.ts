`use strict`;
import { execSync } from "child_process";
import PropertiesReader from "properties-reader";

type GitModule = { path: string; url: string; branch?: string | null };

async function readGitModules(): Promise<GitModule[]> {
    return new Promise(resolve => {
        const properties = PropertiesReader("./.gitmodules");
        const modules: GitModule[] = [];
        const moduleNames = new Set<string>();

        properties.each((key: string) => {
            const match = key.match(/^submodule "(.+)"/);
            if (match) moduleNames.add(match[1]);
        });
        moduleNames.forEach(moduleName => {
            const path = properties.get(
                `submodule "${moduleName}".path`
            ) as string;
            const url = properties.get(
                `submodule "${moduleName}".url`
            ) as string;
            const branch = properties.get(
                `submodule "${moduleName}".branch`
            ) as string | null;
            if (path && url) modules.push({ path, url, branch });
        });
        resolve(modules);
    });
}

const env: {
    getOrDefault: (key: string, defaultValue: string) => string;
    getOrThrow: (key: string) => string;
} = {
    getOrDefault(key, defaultValue) {
        return process.env[key] ?? defaultValue;
    },
    getOrThrow(key) {
        const value = this.getOrDefault(key, "");
        if (value === "")
            throw new Error(`Environment variable ${key} is not set.`);
        return value;
    },
};

function runCode(_code: string | string[]): void {
    let code: string[] = [];
    if (typeof _code === "string") code.push(_code);
    else code = _code;
    code.forEach(line => {
        try {
            const output = execSync(line, { encoding: "utf-8" });
            if (output !== "") console.log(`${output}`);
        } catch (error: unknown) {
            console.error(`Error executing command: ${line}`);
            process.exit(1);
        }
    });
}

async function run() {
    const repoName = env.getOrThrow("REPOSITORY");
    const branch = env.getOrDefault("BRANCH", "main");
    const gitModules = await readGitModules();
    const targetModule = gitModules.find((module: GitModule) => {
        const repoRegex = new RegExp(
            `(https://github.com/|git@github.com:)${repoName}(\\.git)?`,
            "g"
        );
        return repoRegex.test(module.url);
    });
    if (!targetModule)
        throw new Error(`Repository ${repoName} not found in .gitmodules.`);
    if (targetModule.branch && targetModule.branch !== branch) {
        console.log(
            `Repository ${repoName} found in .gitmodules, but branch is not correct.`
        );
        process.exit(0);
    }
    console.log(`Repository ${repoName} found in .gitmodules.`);

    const pat = env.getOrThrow("ORG_PAT");
    runCode([
        `git config --global url."https://x-access-token:${pat}@github.com".insteadOf "https://github.com"`,
        `git submodule update --remote --merge ${targetModule.path}`,
    ]);
    const sha = env.getOrDefault("SHA", "");
    if (sha === "") {
        runCode([
            `echo "HEAD_SHA=$(git ls-remote https://x-access-token:${pat}@github.com/${repoName}.git refs/heads/${branch} | cut -f1)" >> $GITHUB_ENV`,
        ]);
    } else {
        runCode(`echo "HEAD_SHA=${sha}" >> $GITHUB_ENV`);
    }
}

void run();
