version = 0.26.0
tag = sm2go

build-amd64:
	docker build -f Dockerfile-amd64 -t okamumu/tinygo:$(version)-$(tag) .

build-arm64:
	docker build -f Dockerfile-arm64 -t okamumu/tinygo:$(version)-$(tag) .

push:
	docker push okamumu/tinygo:$(version)-$(tag)

clean:
	docker rmi okamumu/tinygo:$(version)-$(tag)

