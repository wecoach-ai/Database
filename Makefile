install:
	go mod tidy

build-bin:
	go build -o dist/auth cmd/main.go

run-prod:
	./dist/auth

run-dev:
	dotenv --dotenv dev.env go run cmd/main.go

clean:
	rm dist/*

format:
	go fmt ./...

test-unit:
	dotenv --dotenv test.env go test -v --covermode atomic --coverpkg github.com/wecoach-ai/AuthService/internal/app ./internal/app_test/unit/

test-integration:
	dotenv --dotenv test.env go test -v --covermode atomic --coverpkg github.com/wecoach-ai/AuthService/internal/app/ ./internal/app_test/integration/
