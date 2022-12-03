image = okamumu/tinygo-ide
tag = 0.26.0

build-amd64:
	docker build -f Dockerfile-amd64 -t $(image):$(tag) .
	docker tag $(image):$(tag) $(image):latest

build-arm64:
	docker build -f Dockerfile-arm64 -t $(image):$(tag) .
	docker tag $(image):$(tag) $(image):latest

push:
	docker push $(image):$(tag)
	docker push $(image):latest

clean:
	docker rmi $(image):$(tag)
	docker rmi $(image):latest

