# openapi.api.UserExtraResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserExtra**](UserExtraResourceApi.md#createuserextra) | **POST** /api/user-extras | 
[**deleteUserExtra**](UserExtraResourceApi.md#deleteuserextra) | **DELETE** /api/user-extras/{id} | 
[**getAllUserExtras**](UserExtraResourceApi.md#getalluserextras) | **GET** /api/user-extras | 
[**getUserExtra**](UserExtraResourceApi.md#getuserextra) | **GET** /api/user-extras/{id} | 
[**partialUpdateUserExtra**](UserExtraResourceApi.md#partialupdateuserextra) | **PATCH** /api/user-extras/{id} | 
[**updateUserExtra**](UserExtraResourceApi.md#updateuserextra) | **PUT** /api/user-extras/{id} | 


# **createUserExtra**
> UserExtraDTO createUserExtra(userExtraDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserExtraResourceApi();
final UserExtraDTO userExtraDTO = ; // UserExtraDTO | 

try {
    final response = api.createUserExtra(userExtraDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserExtraResourceApi->createUserExtra: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userExtraDTO** | [**UserExtraDTO**](UserExtraDTO.md)|  | 

### Return type

[**UserExtraDTO**](UserExtraDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserExtra**
> deleteUserExtra(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserExtraResourceApi();
final int id = 789; // int | 

try {
    api.deleteUserExtra(id);
} catch on DioError (e) {
    print('Exception when calling UserExtraResourceApi->deleteUserExtra: $e\n');
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

# **getAllUserExtras**
> BuiltList<UserExtraDTO> getAllUserExtras(filter)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserExtraResourceApi();
final String filter = filter_example; // String | 

try {
    final response = api.getAllUserExtras(filter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserExtraResourceApi->getAllUserExtras: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UserExtraDTO&gt;**](UserExtraDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserExtra**
> UserExtraDTO getUserExtra(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserExtraResourceApi();
final int id = 789; // int | 

try {
    final response = api.getUserExtra(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserExtraResourceApi->getUserExtra: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**UserExtraDTO**](UserExtraDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateUserExtra**
> UserExtraDTO partialUpdateUserExtra(id, userExtraDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserExtraResourceApi();
final int id = 789; // int | 
final UserExtraDTO userExtraDTO = ; // UserExtraDTO | 

try {
    final response = api.partialUpdateUserExtra(id, userExtraDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserExtraResourceApi->partialUpdateUserExtra: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **userExtraDTO** | [**UserExtraDTO**](UserExtraDTO.md)|  | 

### Return type

[**UserExtraDTO**](UserExtraDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserExtra**
> UserExtraDTO updateUserExtra(id, userExtraDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserExtraResourceApi();
final int id = 789; // int | 
final UserExtraDTO userExtraDTO = ; // UserExtraDTO | 

try {
    final response = api.updateUserExtra(id, userExtraDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserExtraResourceApi->updateUserExtra: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **userExtraDTO** | [**UserExtraDTO**](UserExtraDTO.md)|  | 

### Return type

[**UserExtraDTO**](UserExtraDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

