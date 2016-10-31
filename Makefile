.PHONY: all
MAKEFILE_PATH := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
HERE := $(abspath $(MAKEFILE_PATH))
THERE := $(HERE)/ambition-model

test:
	echo $(abspath $(MAKEFILE_PATH))

build: ambition-model rello vendor
	docker-compose build

ambition-model:
	go get github.com/adamryman/ambition-model
	ln -s $(GOPATH)/src/github.com/adamryman/ambition-model $(HERE)/ambition-model

rello:
	go get gitub.com/adamryman/rello
	ln -s $(GOPATH)/src/github.com/adamryman/rello $(HERE)/rello

vendor:
	cd -P ambition-model && govendor add +external
	cd -P rello && git checkout truss && govendor add +external
