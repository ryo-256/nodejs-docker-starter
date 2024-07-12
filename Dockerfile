FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

# スクリプトファイルを実行するエントリーポイントを設定
ENTRYPOINT ["node"]
