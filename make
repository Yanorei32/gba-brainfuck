#!/bin/bash

docker run \
	--rm \
	-it \
	--user=$(id -u):$(id -g) \
	-v $(cd $(dirname $0) && pwd):/brainfuck \
	cromo/devkitarm \
	bash -c "cd /brainfuck && make ${@:1}"

