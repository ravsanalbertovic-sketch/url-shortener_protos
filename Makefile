GO=go
GO_IN=proto/sso/sso.proto
GO_OUT=./gen/go
GO_GRPC_OUT=./gen/go/

.PHONE: genpb
genpb:
	protoc -I proto $(GO_IN) --go_out=$(GO_OUT) --go_opt=paths=source_relative --go-grpc_out=$(GO_GRPC_OUT) --go-grpc_opt=paths=source_relative
	# Generate code from proto files