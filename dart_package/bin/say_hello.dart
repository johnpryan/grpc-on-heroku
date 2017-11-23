import 'dart:async';
import 'package:helloworld/client.dart';

Future main() async {
  var client = new Client();
  await client.init("127.0.0.1", 50080);
  var request = new HelloRequest()
    ..name = "Jack"
    ..lastname = "Ryan";
  var reply = await client.sayHello(request);
  print("message: ${reply.message} score: ${reply.score}");
  await client.dispose();
}
