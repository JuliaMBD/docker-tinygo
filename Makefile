image = okamumu/tinygo-ide
tag = 0.26.0

build-amd64:
	docker build -f Dockerfile-amd64 -t $(image):$(tag) .

build-arm64:
	docker build -f Dockerfile-arm64 -t $(image):$(tag) .

push:
	docker push $(image):$(tag)

clean:
	docker rmi $(image):$(tag)

