# grpc-helloworld-swiftui-client

<img width="200" src="https://github.com/itsjohnye/grpc-helloworld-swiftui-client/blob/main/Screen%20Shot.png"/>

The folowing content only shows the **client part** of gRPC *helloworld* example.
The server part reference from offical gRPC site: [gRPC Go quickstart](https://grpc.io/docs/languages/go/quickstart/).

#### Make sure:
1. Exactly same `.proto` file used by both server and client side.

```
// helloworld.proto
syntax = "proto3";
option go_package = "google.golang.org/grpc/examples/helloworld/helloworld";
option java_multiple_files = true;
option java_package = "io.grpc.examples.helloworld";
option java_outer_classname = "HelloWorldProto";

package helloworld;

// The greeting service definition.
service Greeter {
  // Sends a greeting
  rpc SayHello (HelloRequest) returns (HelloReply) {}
}

// The request message containing the user's name.
message HelloRequest {
  string name = 1;
}

// The response message containing the greetings
message HelloReply {
  string message = 1;
}
```

2. A runing *helloworld* server by **any supported language**.

3. Files `helloworld.pb.swift` and `helloworld.grpc.swift` which were generated by command line `protoc`, are dragged and dropped into the project.

```
protoc --grpc-swift_out=Client=true,Server=false:. \
    --swift_out=. \
    helloworld.proto
```

4. Swift Package Manager has already added the package dependency [gRPC-Swift](https://github.com/grpc/grpc-swift).

5. Identical localhost:port, we use defualt localhost:50051 in this example.

## License
[WTFPL](https://github.com/itsjohnye/grpc-helloworld-swiftui-client/blob/main/LICENSE)
