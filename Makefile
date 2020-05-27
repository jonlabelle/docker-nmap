NAME=nmap
VERSION=dev
IMAGE_NAME=$(NAME):$(VERSION)

.PHONY: build
build:
	docker build --rm -t $(IMAGE_NAME) .

.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME)
