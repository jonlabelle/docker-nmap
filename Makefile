NAME=nmap
TAG=dev
IMAGE_NAME=$(NAME):$(TAG)

default: build

.PHONY: build
build:
	docker build --no-cache --tag "$(IMAGE_NAME)" .

.PHONY: clean
clean:
	docker rmi "$(IMAGE_NAME)"
