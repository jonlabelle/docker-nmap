NAME=nmap
TAG=dev
IMAGE_NAME=$(NAME):$(TAG)

default: build

.PHONY: build
build:
	docker build --tag "$(IMAGE_NAME)" .

.PHONY: test
test:
	docker-compose --file docker-compose.test.yml up --build

.PHONY: clean
clean:
	docker rmi "$(IMAGE_NAME)"
