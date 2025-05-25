# fatal-pvp

## 編集を始めたい

1. gitを入れます  
私はmacなので最初から入ってるからインストール方法を知りません。自分で調べてください。

2. vscodeで編集用のディレクトリを開きます。  
おすすめはシングル検証用ワールドのdatapacksフォルダです。ここではその前提でフォルダ名をdatapacksとしています。

3. git cloneして編集できるようにします  

    ターミナルで以下のコマンドを打ちます

    ``` clone.sh
    # 一つ前のディレクトリに移動
    cd ../

    # clone先のフォルダが空である必要があるので一旦datapacksフォルダを削除
    # datapacksの中身を消したくない場合は一旦他の場所に移すか下の方法を使う！
    rm -rf datapacks

    # git cloneする
    git clone --recursive https://github.com/The-Chicken-Empire/fatal-pvp datapacks

    # datapacksフォルダにカレントディレクトリを移動
    cd datapacks
    ```

    これでディレクトリの中にフォルダが作られたはず。

    既に作成したdatapackが別であったり、なんかできない！って場合は以下の手順も試してみてください（カレントディレクトリは同様にdatapacksフォルダとします）

    ``` remote_add.sh
    # git initでgitリポジトリとして登録します。
    git init

    # このリポジトリをリモートに設定します
    git remote add origin https://github.com/The-Chicken-Empire/fatal-pvp

    # git fetch originをしてリモートの内容をローカルにダウンロードしてきます
    git fetch origin

    # mainブランチにcheckoutするとローカルにmainブランチが作成される
    # git merge origin/mainだとmasterが作成されちゃうのでなんか面倒
    git checkout main
    ```

4. ブランチを作成して移動します。  
自分用の開発場所(ブランチ)を作ってそこに移動します。
詳しくはgitについて調べてください。自分も人に説明できるほど詳しくないです。  

    ``` delete_branch.sh
    # 新しいブランチを作る
    git branch <新しいブランチの名前>

    # ブランチを移動する
    git checkout <作成したブランチ>
    ```

これで開発の準備ができたはず。

## 基本的な使い方

gitの概念については各自で調べてください。  
ここではそこそこつかいそうな操作だけメモ程度に書いときます。

### ファイルの追加方法など

ブランチ内である程度まとまった進捗が出たらコミットと呼ばれる操作をして変更を保存する。  

  ``` commit.sh
  # 特定のファイルだけコミットしたい場合
  git add <ファイル名>

  # 編集した全てのファイルをコミットしたい場合
  git add -A

  # コミットを行って
  git commit -m <コミットメッセージ>

  ```

コミットメッセージは空にできません。  
どのような変更をしたかを簡単に、他者からわかりやすく書きます。  
**めんどいからってaaaとか入れるのはやめようね**

### ブランチを削除する

間違ってブランチを作ってしまった時に削除する方法

``` delete_branch.sh
// 削除したいブランチ以外に移動する
git checkout <削除対象以外のブランチ>

// ローカルのブランチを強制的に削除
git branch -D <削除対象のブランチ>

// リモートのブランチを削除
git push origin --delete <削除対象のブランチ>

```
