NAME=curl
TAG=qorbani/$(NAME)
VER=v1.1

all: clean build run

build:
	docker build -t $(TAG) -t $(TAG):$(VER) .

run:
	docker run -ti --name $(NAME) $(TAG)
	docker rm $(NAME)

clean:
	-docker stop $(NAME)
	-docker rm $(NAME)

push:
	docker push $(TAG):$(VER)
	docker push $(TAG):latest
