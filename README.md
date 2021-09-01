# grpc-sample-golang

## Guides

### gRPC

- [grpc.io Quick start](https://grpc.io/docs/languages/go/quickstart/)

### Protocol Buffer(proto3)

- [Docs](https://developers.google.com/protocol-buffers/docs/proto3#scalar)

#### Types

- [Scaler Value Types](https://developers.google.com/protocol-buffers/docs/proto3#scalar)


## Prerequisites

- [Golang](https://golang.org/doc/devel/release.html)
- [Protocol buffer compiler](https://github.com/protocolbuffers/protobuf/releases)
    - move binary at under the `/bin` to PATH
- Go plugins

    ```sh
    $ go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
    $ go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
    ```

    ```sh
    $ export PATH="$PATH:$(go env GOPATH)/bin"
    ```

- Document plugins

    ```sh
    $ go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest
    ```

## Usage

### Generate Code

```sh
cd ./todo/todo
protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative ./todo.proto
```

### Generate Doc

```sh
protoc --doc_out=html,index.html:./docs todo/todo//*.proto
```

