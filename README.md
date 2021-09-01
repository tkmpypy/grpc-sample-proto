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
- [Buf](https://docs.buf.build)

## Usage

### Lint

```sh
buf lint
```
or
```sh
buf lint --error-format=json
```

### Build

```sh
buf build
```

### Generate Code

```sh
buf generate todoapis
```

### Generate Doc

```sh
protoc --doc_out=html,index.html:./docs todo/todo//*.proto
```

