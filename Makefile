NAME = mpfefferle/nodejs
VERSION = 4.2.4

.PHONY: all build run

build:
	docker build -t $(NAME):$(VERSION) --rm .

run: build
	docker run --rm -it --entrypoint=/bin/bash \
		$(NAME):$(VERSION)
