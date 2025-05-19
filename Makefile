# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOMOD=$(GOCMD) mod
GOTEST=$(GOCMD) test
GOGENERATE=$(GOCMD) generate
GOFLAGS := -v 
LDFLAGS := -s -w

ifneq ($(shell go env GOOS),darwin)
LDFLAGS := -extldflags "-static"
endif
    
all: build
build: test
	$(GOBUILD) $(GOFLAGS) -ldflags '$(LDFLAGS)' -o "httpx" cmd/httpx/httpx.go
test: 
	$(GOGENERATE) cmd/integration-test/integration-test.go
	$(GOTEST) $(GOFLAGS) ./...
tidy:
	$(GOMOD) tidy
