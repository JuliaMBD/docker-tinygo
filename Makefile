image = okamumu/tinygo-ide
tag = 0.26.0

build-amd64:
	docker build -f Dockerfile-amd64 -t $(image):$(tag)-amd64 .

push-amd64:
	docker push $(image):$(tag)-amd64

clean-amd64:
	docker rmi $(image):$(tag)-amd64

build-arm64:
	docker build -f Dockerfile-arm64 -t $(image):$(tag)-arm64 .

push-arm64:
	docker push $(image):$(tag)-arm64

clean-arm64:
	docker rmi $(image):$(tag)-arm64

