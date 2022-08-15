# openapi.api.UserJwtControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](UserJwtControllerApi.md#authorize) | **POST** /api/authenticate | 


# **authorize**
> JWTToken authorize(loginVM)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserJwtControllerApi();
final LoginVM loginVM = ; // LoginVM | 

try {
    final response = api.authorize(loginVM);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserJwtControllerApi->authorize: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginVM** | [**LoginVM**](LoginVM.md)|  | 

### Return type

[**JWTToken**](JWTToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

