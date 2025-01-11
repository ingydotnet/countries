SHELL := bash

ROOT := $(shell pwd)
export YSPATH := $(ROOT)/lib:$(ROOT)/schema

default:

.PHONY: test
test:
	prove -v ./test
