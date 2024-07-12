#!/bin/bash

WORKDIR="../js-learning/basics"
SRC=$1

# プロジェクト名が指定されていない場合
if [ -z "$SRC" ]; then
    echo "Usage: $0 <src-name>"
    exit 1
fi

# 指定されたプロジェクトディレクトリが存在しない場合
if [ ! -d "$WORKDIR" ]; then
  echo "Error: Project directory '$WORKDIR' does not exist."
  exit 1
fi

mv "$WORKDIR/$SRC" .
docker-compose run --rm app "$SRC"
mv "$SRC" "$WORKDIR"