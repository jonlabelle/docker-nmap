NAME=nmap
VERSION=dev

IMAGE_NAME=$(NAME):$(VERSION)

.PHONY: build
build:
	docker build --rm -t $(IMAGE_NAME) .

.PHONY: test
test:
	docker-compose -f docker-compose.test.yml up --build

.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME)
