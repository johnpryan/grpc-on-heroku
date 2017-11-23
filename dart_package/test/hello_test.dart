import 'package:helloworld/client.dart';
import 'package:test/test.dart';
void main() {
  group("hello", () {
    test("json request", () {
      var request = new HelloRequest()..name = "JR"..lastname = "foo";
      var json = request.writeToJson();
      var decodedRequest = new HelloRequest.fromJson(json);
      expect(decodedRequest, equals(request));
    });
    test("json reply", () {
      var request = new HelloReply()..message = "foo"..score = 10;
      var json = request.writeToJson();
      var decodedRequest = new HelloReply.fromJson(json);
      expect(decodedRequest, equals(request));
      expect(decodedRequest.score, equals(10));
    });
    test("raw json reply", () {
      var request = new HelloReply()..message = "Hello "..score = 10;
      var json = r'{"message":"Hello ","score":10}';
      print(request.writeToJson());
      print(json);
      var decodedRequest = new HelloReply.fromJson(json);
      expect(decodedRequest, equals(request));
      expect(decodedRequest.score, equals(10));
    });
  });
}