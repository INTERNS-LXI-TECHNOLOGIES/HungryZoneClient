# openapi.api.FoodItemResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFoodItem**](FoodItemResourceApi.md#createfooditem) | **POST** /api/food-items | 
[**deleteFoodItem**](FoodItemResourceApi.md#deletefooditem) | **DELETE** /api/food-items/{id} | 
[**getAllFoodItems**](FoodItemResourceApi.md#getallfooditems) | **GET** /api/food-items | 
[**getFoodItem**](FoodItemResourceApi.md#getfooditem) | **GET** /api/food-items/{id} | 
[**partialUpdateFoodItem**](FoodItemResourceApi.md#partialupdatefooditem) | **PATCH** /api/food-items/{id} | 
[**updateFoodItem**](FoodItemResourceApi.md#updatefooditem) | **PUT** /api/food-items/{id} | 


# **createFoodItem**
> FoodItemDTO createFoodItem(foodItemDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodItemResourceApi();
final FoodItemDTO foodItemDTO = ; // FoodItemDTO | 

try {
    final response = api.createFoodItem(foodItemDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodItemResourceApi->createFoodItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **foodItemDTO** | [**FoodItemDTO**](FoodItemDTO.md)|  | 

### Return type

[**FoodItemDTO**](FoodItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFoodItem**
> deleteFoodItem(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodItemResourceApi();
final int id = 789; // int | 

try {
    api.deleteFoodItem(id);
} catch on DioError (e) {
    print('Exception when calling FoodItemResourceApi->deleteFoodItem: $e\n');
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

# **getAllFoodItems**
> BuiltList<FoodItemDTO> getAllFoodItems()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodItemResourceApi();

try {
    final response = api.getAllFoodItems();
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodItemResourceApi->getAllFoodItems: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;FoodItemDTO&gt;**](FoodItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFoodItem**
> FoodItemDTO getFoodItem(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodItemResourceApi();
final int id = 789; // int | 

try {
    final response = api.getFoodItem(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodItemResourceApi->getFoodItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**FoodItemDTO**](FoodItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateFoodItem**
> FoodItemDTO partialUpdateFoodItem(id, foodItemDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodItemResourceApi();
final int id = 789; // int | 
final FoodItemDTO foodItemDTO = ; // FoodItemDTO | 

try {
    final response = api.partialUpdateFoodItem(id, foodItemDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodItemResourceApi->partialUpdateFoodItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **foodItemDTO** | [**FoodItemDTO**](FoodItemDTO.md)|  | 

### Return type

[**FoodItemDTO**](FoodItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFoodItem**
> FoodItemDTO updateFoodItem(id, foodItemDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodItemResourceApi();
final int id = 789; // int | 
final FoodItemDTO foodItemDTO = ; // FoodItemDTO | 

try {
    final response = api.updateFoodItem(id, foodItemDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FoodItemResourceApi->updateFoodItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **foodItemDTO** | [**FoodItemDTO**](FoodItemDTO.md)|  | 

### Return type

[**FoodItemDTO**](FoodItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

