include .env
BASEURL=github.com/adamryman/ambition

build: ambition-model ambition-users ambition-rello

all: get build clients

get:
	go get -u -v -d $(BASEURL)-model/... $(BASEURL)-users/... $(BASEURL)-rello/...

clients: 
	go install $(BASEURL)-model/ambition-service/cmd/ambition
	go install $(BASEURL)-users/users-service/cmd/users
	go install $(BASEURL)-rello/rello-service/cmd/rello


ambition-model:
	echo $(CGO_ENABLED)
	cd $(GOPATH)/src/$(BASEURL)-model && \
		mkdir -p target && \
		CGO_ENABLED=$(CGO_ENABLED) go build -v -o target/runnew \
		./ambition-service/cmd/ambition-server && \
		mv ./target/runnew ./target/run

ambition-users:
	cd $(GOPATH)/src/$(BASEURL)-users && \
		mkdir -p target && \
		CGO_ENABLED=$(CGO_ENABLED) go build -v -o target/runnew \
		./users-service/cmd/users-server && \
		mv ./target/runnew ./target/run

ambition-rello:
	cd $(GOPATH)/src/$(BASEURL)-rello && \
		mkdir -p target && \
		CGO_ENABLED=$(CGO_ENABLED) go build -v -o target/runnew \
		./rello-service/cmd/rello-server && \
		mv ./target/runnew ./target/run

.PHONY: build all get ambition-model ambition-users ambition-rello clients
