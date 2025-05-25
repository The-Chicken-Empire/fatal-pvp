`use strict`;
import { exec } from "child_process";
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

const env: { getOrDefault: (key: string, defaultValue: string) => string, getOrThrow: (key: string) => string } = {
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
}

void run();
