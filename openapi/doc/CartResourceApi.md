# openapi.api.CartResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCart**](CartResourceApi.md#createcart) | **POST** /api/carts | 
[**deleteCart**](CartResourceApi.md#deletecart) | **DELETE** /api/carts/{id} | 
[**getAllCarts**](CartResourceApi.md#getallcarts) | **GET** /api/carts | 
[**getCart**](CartResourceApi.md#getcart) | **GET** /api/carts/{id} | 
[**partialUpdateCart**](CartResourceApi.md#partialupdatecart) | **PATCH** /api/carts/{id} | 
[**updateCart**](CartResourceApi.md#updatecart) | **PUT** /api/carts/{id} | 


# **createCart**
> CartDTO createCart(cartDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartResourceApi();
final CartDTO cartDTO = ; // CartDTO | 

try {
    final response = api.createCart(cartDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartResourceApi->createCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartDTO** | [**CartDTO**](CartDTO.md)|  | 

### Return type

[**CartDTO**](CartDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCart**
> deleteCart(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartResourceApi();
final int id = 789; // int | 

try {
    api.deleteCart(id);
} catch on DioError (e) {
    print('Exception when calling CartResourceApi->deleteCart: $e\n');
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

# **getAllCarts**
> BuiltList<CartDTO> getAllCarts()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartResourceApi();

try {
    final response = api.getAllCarts();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartResourceApi->getAllCarts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CartDTO&gt;**](CartDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCart**
> CartDTO getCart(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartResourceApi();
final int id = 789; // int | 

try {
    final response = api.getCart(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartResourceApi->getCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**CartDTO**](CartDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateCart**
> CartDTO partialUpdateCart(id, cartDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartResourceApi();
final int id = 789; // int | 
final CartDTO cartDTO = ; // CartDTO | 

try {
    final response = api.partialUpdateCart(id, cartDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartResourceApi->partialUpdateCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **cartDTO** | [**CartDTO**](CartDTO.md)|  | 

### Return type

[**CartDTO**](CartDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCart**
> CartDTO updateCart(id, cartDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartResourceApi();
final int id = 789; // int | 
final CartDTO cartDTO = ; // CartDTO | 

try {
    final response = api.updateCart(id, cartDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartResourceApi->updateCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **cartDTO** | [**CartDTO**](CartDTO.md)|  | 

### Return type

[**CartDTO**](CartDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

