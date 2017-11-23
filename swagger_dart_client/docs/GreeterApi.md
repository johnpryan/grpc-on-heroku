# swagger.api.GreeterApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sayHello**](GreeterApi.md#sayHello) | **POST** /v1/helloworld/greeter/say-hello | Sends a greeting


# **sayHello**
> HelloworldHelloReply sayHello(body)

Sends a greeting

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GreeterApi();
var body = new HelloworldHelloRequest(); // HelloworldHelloRequest | 

try { 
    var result = api_instance.sayHello(body);
    print(result);
} catch (e) {
    print("Exception when calling GreeterApi->sayHello: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**HelloworldHelloRequest**](HelloworldHelloRequest.md)|  | 

### Return type

[**HelloworldHelloReply**](HelloworldHelloReply.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

