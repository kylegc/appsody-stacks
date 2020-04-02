# Make targets for building and testing the edge service

# This imports the variables from horizon/hzn.json. You can ignore these lines, but do not remove them.
-include horizon/.hzn.json.tmp.mk

# Default ARCH to the architecture of this machines (as horizon/golang describes it)
export ARCH ?= $(shell hzn architecture)

# Build the docker image for the current architecture
build:
	appsody build -t $(DOCKER_IMAGE_BASE)_$(ARCH):$(SERVICE_VERSION)

run:
	appsody run

test:
	appsody test

hzn-start: build
	hzn dev service start -S

hzn-stop:
	hzn dev service stop

clean:
	-docker rmi $(DOCKER_IMAGE_BASE)_$(ARCH):$(SERVICE_VERSION) 2> /dev/null || :

# Build the docker image for 3 architectures
#build-all-arches:
#	ARCH=amd64 $(MAKE) build
#	ARCH=arm $(MAKE) build
#	ARCH=arm64 $(MAKE) build

#clean-all-archs:
#	ARCH=amd64 $(MAKE) clean
#	ARCH=arm $(MAKE) clean
#	ARCH=arm64 $(MAKE) clean

## This imports the variables from horizon/hzn.json. You can ignore these lines, but do not remove them.
horizon/.hzn.json.tmp.mk: horizon/hzn.json
	hzn util configconv -f $< > $@

.PHONY: build clean
