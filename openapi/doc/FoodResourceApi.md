# openapi.api.FoodResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFood**](FoodResourceApi.md#createfood) | **POST** /api/foods | 
[**deleteFood**](FoodResourceApi.md#deletefood) | **DELETE** /api/foods/{id} | 
[**getAllFoods**](FoodResourceApi.md#getallfoods) | **GET** /api/foods | 
[**getFood**](FoodResourceApi.md#getfood) | **GET** /api/foods/{id} | 
[**partialUpdateFood**](FoodResourceApi.md#partialupdatefood) | **PATCH** /api/foods/{id} | 
[**updateFood**](FoodResourceApi.md#updatefood) | **PUT** /api/foods/{id} | 


# **createFood**
> FoodDTO createFood(foodDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodResourceApi();
final FoodDTO foodDTO = ; // FoodDTO | 

try {
    final response = api.createFood(foodDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodResourceApi->createFood: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **foodDTO** | [**FoodDTO**](FoodDTO.md)|  | 

### Return type

[**FoodDTO**](FoodDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFood**
> deleteFood(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodResourceApi();
final int id = 789; // int | 

try {
    api.deleteFood(id);
} catch on DioError (e) {
    print('Exception when calling FoodResourceApi->deleteFood: $e\n');
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

# **getAllFoods**
> BuiltList<FoodDTO> getAllFoods()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodResourceApi();

try {
    final response = api.getAllFoods();
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodResourceApi->getAllFoods: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;FoodDTO&gt;**](FoodDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFood**
> FoodDTO getFood(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodResourceApi();
final int id = 789; // int | 

try {
    final response = api.getFood(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodResourceApi->getFood: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**FoodDTO**](FoodDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateFood**
> FoodDTO partialUpdateFood(id, foodDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodResourceApi();
final int id = 789; // int | 
final FoodDTO foodDTO = ; // FoodDTO | 

try {
    final response = api.partialUpdateFood(id, foodDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodResourceApi->partialUpdateFood: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **foodDTO** | [**FoodDTO**](FoodDTO.md)|  | 

### Return type

[**FoodDTO**](FoodDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFood**
> FoodDTO updateFood(id, foodDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodResourceApi();
final int id = 789; // int | 
final FoodDTO foodDTO = ; // FoodDTO | 

try {
    final response = api.updateFood(id, foodDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodResourceApi->updateFood: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **foodDTO** | [**FoodDTO**](FoodDTO.md)|  | 

### Return type

[**FoodDTO**](FoodDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

