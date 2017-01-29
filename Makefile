.PHONY:
include .env
BASEURL=github.com/adamryman/ambition

build: ambition-model ambition-users ambition-rello

all: get build

get:
	go get -u -v -d $(BASEURL)-model/... $(BASEURL)-users/... $(BASEURL)-rello/...

ambition-model:
	echo $(CGO_ENABLED)
	cd $(GOPATH)/src/$(BASEURL)-model && \
		mkdir -p target && \
		CGO_ENABLED=$(CGO_ENABLED) go build -v -o target/run \
		./ambition-service/ambition-server

ambition-users:
	cd $(GOPATH)/src/$(BASEURL)-users && \
		mkdir -p target && \
		CGO_ENABLED=$(CGO_ENABLED) go build -v -o target/run \
		./users-service/users-server

ambition-rello:
	cd $(GOPATH)/src/$(BASEURL)-rello && \
		mkdir -p target && \
		CGO_ENABLED=$(CGO_ENABLED) go build -v -o target/run \
		./rello-service/rello-server
