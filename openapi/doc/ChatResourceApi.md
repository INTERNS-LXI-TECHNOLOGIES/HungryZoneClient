# openapi.api.ChatResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteChat**](ChatResourceApi.md#deletechat) | **DELETE** /api/chats/{id} | 
[**getAllChats**](ChatResourceApi.md#getallchats) | **GET** /api/chats | 
[**getChat**](ChatResourceApi.md#getchat) | **GET** /api/chats/{id} | 


# **deleteChat**
> deleteChat(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChatResourceApi();
final int id = 789; // int | 

try {
    api.deleteChat(id);
} catch on DioError (e) {
    print('Exception when calling ChatResourceApi->deleteChat: $e\n');
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

# **getAllChats**
> BuiltList<ChatDTO> getAllChats(eagerload)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChatResourceApi();
final bool eagerload = true; // bool | 

try {
    final response = api.getAllChats(eagerload);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatResourceApi->getAllChats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eagerload** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;ChatDTO&gt;**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChat**
> ChatDTO getChat(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChatResourceApi();
final int id = 789; // int | 

try {
    final response = api.getChat(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatResourceApi->getChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

