up:
	migrate -path ./migrations -database "mongodb://root:root@localhost:27017/testdb?authSource=admin&directConnection=true" up 1

down:
	migrate -path ./migrations -database "mongodb://root:root@localhost:27017/testdb?authSource=admin&directConnection=true" down 1

latest:
	migrate -path ./migrations -database "mongodb://root:root@localhost:27017/testdb?authSource=admin&directConnection=true" up