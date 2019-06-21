##################################################
# Variables                                      #
##################################################
ARCH?=amd64
CGO?=0
TARGET_OS?=linux

##################################################
# Variables                                      #
##################################################

GIT_VERSION = $(shell git describe --always --abbrev=7)
GIT_COMMIT  = $(shell git rev-list -1 HEAD)
DATE        = $(shell date -u +"%Y.%m.%d.%H.%M.%S")

##################################################
# Tests                                          #
##################################################
.PHONY: test
test:
	go test ./pkg/...