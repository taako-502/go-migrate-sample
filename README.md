# Go Migrate Sample

[golang-migrate/migrate](https://github.com/golang-migrate/migrate)を使ったマイグレーションです。

## セットアップ

```bash
$ openssl rand -base64 756 > replicaset.key
$ chmod 600 replicaset.key
$ chown 999 replicaset.key
```

## マイグレーション

```bash
migrate -database "mongodb://localhost:27017/testdb2/?directConnection=true" -path ./migrations_2/ up
migrate -database "mongodb://localhost:27017/testdb2/?directConnection=true&replicaSet=rs0" -path ./migrations_2/ up
```

## 参考

https://zenn.dev/ytdrep/articles/217e3aeeadd07c
