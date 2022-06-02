all: build

push: build
	podman push quay.io/jlindgren/toolbox:latest

build:
	podman build . --layers -t quay.io/jlindgren/toolbox:latest
