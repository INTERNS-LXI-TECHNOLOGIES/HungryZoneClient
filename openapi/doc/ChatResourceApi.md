# openapi.api.ChatResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChat**](ChatResourceApi.md#createchat) | **POST** /api/chats | 
[**deleteChat**](ChatResourceApi.md#deletechat) | **DELETE** /api/chats/{id} | 
[**getAllChats**](ChatResourceApi.md#getallchats) | **GET** /api/chats | 
[**getChat**](ChatResourceApi.md#getchat) | **GET** /api/chats/{id} | 
[**partialUpdateChat**](ChatResourceApi.md#partialupdatechat) | **PATCH** /api/chats/{id} | 
[**updateChat**](ChatResourceApi.md#updatechat) | **PUT** /api/chats/{id} | 


# **createChat**
> ChatDTO createChat(chatDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChatResourceApi();
final ChatDTO chatDTO = ; // ChatDTO | 

try {
    final response = api.createChat(chatDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatResourceApi->createChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatDTO** | [**ChatDTO**](ChatDTO.md)|  | 

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **partialUpdateChat**
> ChatDTO partialUpdateChat(id, chatDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChatResourceApi();
final int id = 789; // int | 
final ChatDTO chatDTO = ; // ChatDTO | 

try {
    final response = api.partialUpdateChat(id, chatDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatResourceApi->partialUpdateChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **chatDTO** | [**ChatDTO**](ChatDTO.md)|  | 

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChat**
> ChatDTO updateChat(id, chatDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChatResourceApi();
final int id = 789; // int | 
final ChatDTO chatDTO = ; // ChatDTO | 

try {
    final response = api.updateChat(id, chatDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatResourceApi->updateChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **chatDTO** | [**ChatDTO**](ChatDTO.md)|  | 

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

