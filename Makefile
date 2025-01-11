SHELL := bash

ROOT := $(shell pwd)
export YSPATH := $(ROOT):$(ROOT)/lib:$(ROOT)/ys

default:

.PHONY: test
test:
	prove -v ./test
