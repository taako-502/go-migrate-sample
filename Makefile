up:
	migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" up 1

down:
	migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" down 1

latest:
	migrate -path ./migrations -database "mongodb://localhost:27017/testdb?directConnection=true" up