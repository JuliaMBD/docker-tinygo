build-amd64:
	docker build -f Dockerfile-amd64 -t okamumu/tinygo:0.26.0-sm2go .

push:
	docker push okamumu/tinygo:0.26.0-sm2go

clean:
	docker rmi okamumu/tinygo:0.26.0-sm2go

