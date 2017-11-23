all: helloworld/helloworld.pb.go helloworld/helloworld.pb.gw.go helloworld/helloworld.swagger.json helloworld/helloworld.pb.dart

helloworld/helloworld.pb.go: helloworld/helloworld.proto
		protoc -I/usr/local/include -I helloworld \
				-I$(GOPATH)/src \
				-I$(GOPATH)/src/github.com/gengo/grpc-gateway/third_party/googleapis \
				--go_out=Mgoogle/api/annotations.proto=github.com/gengo/grpc-gateway/third_party/googleapis/google/api,plugins=grpc:helloworld \
				helloworld/helloworld.proto

helloworld/helloworld.pb.gw.go: helloworld/helloworld.proto
		protoc -I/usr/local/include -I helloworld \
				-I$(GOPATH)/src \
				-I$(GOPATH)/src/github.com/gengo/grpc-gateway/third_party/googleapis \
				 --grpc-gateway_out=logtostderr=true:helloworld \
				helloworld/helloworld.proto

helloworld/helloworld.swagger.json: helloworld/helloworld.proto
		protoc -I/usr/local/include -I helloworld \
				-I$(GOPATH)/src \
				-I$(GOPATH)/src/github.com/gengo/grpc-gateway/third_party/googleapis \
				--swagger_out=logtostderr=true:helloworld \
				helloworld/helloworld.proto

helloworld/helloworld.pb.dart: helloworld/helloworld.proto
		protoc -I/usr/local/include -I helloworld \
				-I$(GOPATH)/src \
				-I$(GOPATH)/src/github.com/gengo/grpc-gateway/third_party/googleapis \
				 --grpc-gateway_out=logtostderr=true:helloworld \
				--dart_out=grpc:dart_package/lib/src/generated -Iprotos helloworld/helloworld.proto