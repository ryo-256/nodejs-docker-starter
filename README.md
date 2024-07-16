## Node.js スターター
### セットアップ

1. **リポジトリをクローンする**:
    ```sh
    git clone https://github.com/ryo-256/nodejs-docker-starter.git
    cd nodejs-starter-kit
    ```

2. **Dockerイメージをビルドする**:
    ```sh
    docker-compose build
    ```

### 使用方法

#### Node.js インタラクティブシェルを起動する

Node.jsのインタラクティブシェル（REPL）を起動するには、次のコマンドを使用します:
```sh
docker-compose run --rm app
```

#### 特定のJavaScriptファイルを実行する

特定のJavaScriptファイル（例: `script1.js`）を実行するには、次のコマンドを使用します:
```sh
docker-compose run --rm app script1.js
```

プロジェクトディレクトリ内の他の任意のJavaScriptファイルの名前を指定できます。

### プロジェクト構成

```
nodejs-starter-kit/
├── Dockerfile
├── docker-compose.yml
├── package.json
└── (ex.)script1.js
```

### 依存関係の追加

新しい依存関係を追加するには、`package.json` ファイルの `dependencies` を編集し、Dockerイメージを再ビルドします:
```sh
docker-compose build
```
