# openapi.api.MessageResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMessage**](MessageResourceApi.md#createmessage) | **POST** /api/messages | 
[**deleteMessage**](MessageResourceApi.md#deletemessage) | **DELETE** /api/messages/{id} | 
[**getAllMessages**](MessageResourceApi.md#getallmessages) | **GET** /api/messages | 
[**getMessage**](MessageResourceApi.md#getmessage) | **GET** /api/messages/{id} | 
[**partialUpdateMessage**](MessageResourceApi.md#partialupdatemessage) | **PATCH** /api/messages/{id} | 
[**updateMessage**](MessageResourceApi.md#updatemessage) | **PUT** /api/messages/{id} | 


# **createMessage**
> MessageDTO createMessage(messageDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessageResourceApi();
final MessageDTO messageDTO = ; // MessageDTO | 

try {
    final response = api.createMessage(messageDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageResourceApi->createMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDTO** | [**MessageDTO**](MessageDTO.md)|  | 

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
> deleteMessage(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessageResourceApi();
final int id = 789; // int | 

try {
    api.deleteMessage(id);
} catch on DioError (e) {
    print('Exception when calling MessageResourceApi->deleteMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMessages**
> BuiltList<MessageDTO> getAllMessages()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessageResourceApi();

try {
    final response = api.getAllMessages();
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageResourceApi->getAllMessages: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;MessageDTO&gt;**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessage**
> MessageDTO getMessage(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessageResourceApi();
final int id = 789; // int | 

try {
    final response = api.getMessage(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageResourceApi->getMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateMessage**
> MessageDTO partialUpdateMessage(id, messageDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessageResourceApi();
final int id = 789; // int | 
final MessageDTO messageDTO = ; // MessageDTO | 

try {
    final response = api.partialUpdateMessage(id, messageDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageResourceApi->partialUpdateMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **messageDTO** | [**MessageDTO**](MessageDTO.md)|  | 

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMessage**
> MessageDTO updateMessage(id, messageDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMessageResourceApi();
final int id = 789; // int | 
final MessageDTO messageDTO = ; // MessageDTO | 

try {
    final response = api.updateMessage(id, messageDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MessageResourceApi->updateMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **messageDTO** | [**MessageDTO**](MessageDTO.md)|  | 

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

