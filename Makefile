.PHONY: proto
proto:
	protoc -I /usr/local/include -I . \
		-I$(GOPATH)/src \
		-I ${GOPATH}/src/github.com/envoyproxy/protoc-gen-validate \
		--go_out=plugins=grpc:. \
		--dart_out=grpc:. \
		--twirp_out=. \
		--validate_out=lang=go:. \
		proto/**/*.proto

.PHONY: build
build: proto
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix nocgo -o app .

.PHONY: build-local
build-local: proto
	CGO_ENABLED=0 go build -a -installsuffix nocgo -o cmd/app .

.PHONY: docker
docker:
	docker build . -t grpc-test-server:latest
	go clean

.PHONY: up
up:
	kubectl apply -f k8s.yml

.PHONY: down
down:
	kubectl delete -f k8s.yml


.PHONY: info
info:
	# kubectl get -f k8s.yml
	kubectl get all --namespace=grpctest