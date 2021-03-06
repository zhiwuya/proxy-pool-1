export GO111MODULE = on

.PHONY: default test test-cover dev

# for dev
dev:
	fresh

# for test
test:
	go test -race -cover ./...

test-cover:
	go test -race -coverprofile=test.out ./... && go tool cover --html=test.out

build:
	packr2
	go build -o proxypool 
