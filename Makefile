TAG = denissliva/psalm
VERSION = 1.0.0
DESTINATION = .
DEBUG_COMMAND = /bin/bash

default: build

build:
	docker build \
	       --force-rm \
	       --tag "$(TAG):$(VERSION)" \
	       --file Dockerfile \
	       $$PWD

push:
	docker push $(TAG):$(VERSION)

debug:
	docker run \
	       --rm \
	       --interactive \
	       "$(TAG)$(VERSION)" $(DEBUG_COMMAND)

run:
	@docker run \
	       --rm \
           --volume $$PWD:/psalm \
           --name "psalm" \
           "$(TAG):$(VERSION)" \
           $(DESTINATION)


release: build push