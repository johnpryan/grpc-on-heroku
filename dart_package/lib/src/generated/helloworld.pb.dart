///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library helloworld_helloworld;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class HelloRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('HelloRequest')
    ..a<String>(1, 'name', PbFieldType.OS)
    ..a<String>(2, 'lastname', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  HelloRequest() : super();
  HelloRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  HelloRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  HelloRequest clone() => new HelloRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static HelloRequest create() => new HelloRequest();
  static PbList<HelloRequest> createRepeated() => new PbList<HelloRequest>();
  static HelloRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyHelloRequest();
    return _defaultInstance;
  }
  static HelloRequest _defaultInstance;
  static void $checkItem(HelloRequest v) {
    if (v is! HelloRequest) checkItemFailed(v, 'HelloRequest');
  }

  String get name => $_get(0, 1, '');
  set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);

  String get lastname => $_get(1, 2, '');
  set lastname(String v) { $_setString(1, 2, v); }
  bool hasLastname() => $_has(1, 2);
  void clearLastname() => clearField(2);
}

class _ReadonlyHelloRequest extends HelloRequest with ReadonlyMessageMixin {}

class HelloReply extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('HelloReply')
    ..a<String>(1, 'message', PbFieldType.OS)
    ..a<int>(2, 'score', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HelloReply() : super();
  HelloReply.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  HelloReply.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  HelloReply clone() => new HelloReply()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static HelloReply create() => new HelloReply();
  static PbList<HelloReply> createRepeated() => new PbList<HelloReply>();
  static HelloReply getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyHelloReply();
    return _defaultInstance;
  }
  static HelloReply _defaultInstance;
  static void $checkItem(HelloReply v) {
    if (v is! HelloReply) checkItemFailed(v, 'HelloReply');
  }

  String get message => $_get(0, 1, '');
  set message(String v) { $_setString(0, 1, v); }
  bool hasMessage() => $_has(0, 1);
  void clearMessage() => clearField(1);

  int get score => $_get(1, 2, 0);
  set score(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasScore() => $_has(1, 2);
  void clearScore() => clearField(2);
}

class _ReadonlyHelloReply extends HelloReply with ReadonlyMessageMixin {}

