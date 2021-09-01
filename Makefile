.PHONY: all
all: build lint

.PHONY: build
build:
	buf build

.PHONY: lint
lint:
	buf lint
