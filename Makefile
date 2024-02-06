gotestsum := go run gotest.tools/gotestsum@latest

gql:
	go run github.com/Khan/genqlient internal/schema/genqlient.yaml
	go run github.com/raito-io/sdk/agen --input internal/schema/generated.go --output types/generated.go

fetch-schema:
	.script/fetch-schema.sh --output internal/schema/schema.graphql

fetch-local-schema:
	npx --yes get-graphql-schema http://localhost:8080/query > internal/schema/schema.graphql

lint:
	golangci-lint run ./...
	go fmt ./...

build:
	go build ./...