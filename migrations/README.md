# Migrations

[golang-migrate/migrate](https://github.com/golang-migrate/migrate)を使ったマイグレーションです。

```bash
migrate -database "mongodb://localhost:27017/testdb2/?directConnection=true" -path ./migrations_2/ up
migrate -database "mongodb://localhost:27017/sample_db" -path "./migrate/" up 2
migrate -database "mongodb://localhost:27017/testdb2" -path ./migrations up

```
