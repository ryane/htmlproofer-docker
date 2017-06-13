VERSION ?= latest
REPO = ryane
IMAGE = htmlproofer

.PHONY: build

build:
	docker build -t $(REPO)/$(IMAGE):$(VERSION) .

push:
	docker push $(REPO)/$(IMAGE):$(VERSION)

release: build
	make push -e VERSION=$(VERSION)

default: build
