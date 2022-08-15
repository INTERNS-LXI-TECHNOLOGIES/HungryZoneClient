# openapi.api.CategoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCategory**](CategoryResourceApi.md#createcategory) | **POST** /api/categories | 
[**deleteCategory**](CategoryResourceApi.md#deletecategory) | **DELETE** /api/categories/{id} | 
[**getAllCategories**](CategoryResourceApi.md#getallcategories) | **GET** /api/categories | 
[**getCategory**](CategoryResourceApi.md#getcategory) | **GET** /api/categories/{id} | 
[**partialUpdateCategory**](CategoryResourceApi.md#partialupdatecategory) | **PATCH** /api/categories/{id} | 
[**updateCategory**](CategoryResourceApi.md#updatecategory) | **PUT** /api/categories/{id} | 


# **createCategory**
> CategoryDTO createCategory(categoryDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCategoryResourceApi();
final CategoryDTO categoryDTO = ; // CategoryDTO | 

try {
    final response = api.createCategory(categoryDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CategoryResourceApi->createCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryDTO** | [**CategoryDTO**](CategoryDTO.md)|  | 

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategory**
> deleteCategory(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCategoryResourceApi();
final int id = 789; // int | 

try {
    api.deleteCategory(id);
} catch on DioError (e) {
    print('Exception when calling CategoryResourceApi->deleteCategory: $e\n');
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

# **getAllCategories**
> BuiltList<CategoryDTO> getAllCategories()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCategoryResourceApi();

try {
    final response = api.getAllCategories();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CategoryResourceApi->getAllCategories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CategoryDTO&gt;**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategory**
> CategoryDTO getCategory(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCategoryResourceApi();
final int id = 789; // int | 

try {
    final response = api.getCategory(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CategoryResourceApi->getCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateCategory**
> CategoryDTO partialUpdateCategory(id, categoryDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCategoryResourceApi();
final int id = 789; // int | 
final CategoryDTO categoryDTO = ; // CategoryDTO | 

try {
    final response = api.partialUpdateCategory(id, categoryDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CategoryResourceApi->partialUpdateCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **categoryDTO** | [**CategoryDTO**](CategoryDTO.md)|  | 

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategory**
> CategoryDTO updateCategory(id, categoryDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCategoryResourceApi();
final int id = 789; // int | 
final CategoryDTO categoryDTO = ; // CategoryDTO | 

try {
    final response = api.updateCategory(id, categoryDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CategoryResourceApi->updateCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **categoryDTO** | [**CategoryDTO**](CategoryDTO.md)|  | 

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

