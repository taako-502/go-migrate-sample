# Go Migrate Sample

[golang-migrate/migrate](https://github.com/golang-migrate/migrate)を使ったマイグレーションです。

## セットアップ

```bash
$ openssl rand -base64 756 > replicaset.key
$ chmod 600 replicaset.key
$ chown 999 replicaset.key
```

mongosh を開く。

```bash
mongosh
```

レプリカセットの初期化

```js
rs.initiate({
  _id: "rs0",
  members: [
    { _id: 0, host: "go_migrate_mongo_primary:27017", priority: 3 },
    { _id: 1, host: "go_migrate_mongo_secondary:27017", priority: 2 },
    { _id: 2, host: "go_migrate_mongo_tertiary:27017", priority: 1 },
    { _id: 3, host: "go_migrate_mongo_arbiter:27017", arbiterOnly: true },
  ],
})
```

確認用コマンド

```bash
rs.status()
rs.conf()
```

## マイグレーション

```bash
# 最新化
migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" up

# 1つだけバージョンアップ
migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" up 1
```

# バージョンダウン

```bash
migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" down 1
```

# dirty 状態の解消

```bash
migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" force 1
```

## 参考

https://zenn.dev/ytdrep/articles/217e3aeeadd07c
