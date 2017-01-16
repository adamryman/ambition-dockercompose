.PHONY: all ambition-model rello vendor build mysql
MAKEFILE_PATH := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
HERE := $(abspath $(MAKEFILE_PATH))
THERE := $(HERE)/ambition-model
AMBITION_MODEL := github.com/adamryman/ambition-model
AMBITION_MODEL_PATH := $$GOPATH/src/$(AMBITION_MODEL)

RELLO := github.com/adamryman/rello
RELLO_PATH := $$GOPATH/src/$(RELLO)

build: ambition-model rello

ambition-model:
	go get $(AMBITION_MODEL)
	mkdir -p $(AMBITION_MODEL_PATH)/target
	GOOS="linux" GOARCH="amd64" go build -o $(AMBITION_MODEL_PATH)/target/run $(AMBITION_MODEL)/ambition-service/ambition-server


rello:
	go get $(RELLO)
	mkdir -p $(RELLO_PATH)/target
	GOOS="linux" GOARCH="amd64" go build -o $(RELLO_PATH)/target/run $(RELLO)/rello-service/rello-server

vendor:
	cd -P ambition-model && govendor add +external
	cd -P rello && git checkout truss && govendor add +external

mysql:
	docker-compose up -d ambition-mysql
	docker-compose logs -f ambition-mysql
