import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:helloworld/client.dart';

Future main() async {
  var client =
      new HttpClient(new http.Client(), 'http://grpc-on-heroku.herokuapp.com');
  var request = new HelloRequest()
    ..name = "Jack"
    ..lastname = "Ryan";
  var reply = await client.sayHello(request);
  print("message: ${reply.message} score: ${reply.score}");
}
