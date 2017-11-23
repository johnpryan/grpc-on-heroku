library helloworld;

import 'dart:async';
import 'dart:convert';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;

export 'src/generated/helloworld.pb.dart';
import 'src/generated/helloworld.pbgrpc.dart';

class Client {
  ClientChannel _channel;
  GreeterClient _stub;

  Future<HelloReply> init(String host, int port) async {
    _channel = new ClientChannel(host,
        port: port, options: const ChannelOptions.insecure());
    _stub = new GreeterClient(_channel,
        options: new CallOptions(timeout: new Duration(seconds: 30)));
  }

  Future<Null> dispose() async {
    await _channel.shutdown();
  }

  Future<HelloReply> sayHello(HelloRequest request) async {
    return await _stub.sayHello(request);
  }
}

class HttpClient {
  final http.Client client;
  final String baseUri;
  HttpClient(this.client, this.baseUri);

  Future<HelloReply> sayHello(HelloRequest request) async {
    var response = await client.post(
      baseUri + "/v1/helloworld/greeter/say-hello",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: request.writeToJson()
    );
    print('statusCode: ${response.statusCode}');
    print('body: ${response.body}');
    return new HelloReply.fromJson(response.body);
  }
}
