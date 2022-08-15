# openapi.api.CartItemResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCartItem**](CartItemResourceApi.md#createcartitem) | **POST** /api/cart-items | 
[**deleteCartItem**](CartItemResourceApi.md#deletecartitem) | **DELETE** /api/cart-items/{id} | 
[**getAllCartItems**](CartItemResourceApi.md#getallcartitems) | **GET** /api/cart-items | 
[**getCartItem**](CartItemResourceApi.md#getcartitem) | **GET** /api/cart-items/{id} | 
[**partialUpdateCartItem**](CartItemResourceApi.md#partialupdatecartitem) | **PATCH** /api/cart-items/{id} | 
[**updateCartItem**](CartItemResourceApi.md#updatecartitem) | **PUT** /api/cart-items/{id} | 


# **createCartItem**
> CartItemDTO createCartItem(cartItemDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartItemResourceApi();
final CartItemDTO cartItemDTO = ; // CartItemDTO | 

try {
    final response = api.createCartItem(cartItemDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartItemResourceApi->createCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartItemDTO** | [**CartItemDTO**](CartItemDTO.md)|  | 

### Return type

[**CartItemDTO**](CartItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCartItem**
> deleteCartItem(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartItemResourceApi();
final int id = 789; // int | 

try {
    api.deleteCartItem(id);
} catch on DioError (e) {
    print('Exception when calling CartItemResourceApi->deleteCartItem: $e\n');
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

# **getAllCartItems**
> BuiltList<CartItemDTO> getAllCartItems()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartItemResourceApi();

try {
    final response = api.getAllCartItems();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartItemResourceApi->getAllCartItems: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CartItemDTO&gt;**](CartItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartItem**
> CartItemDTO getCartItem(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartItemResourceApi();
final int id = 789; // int | 

try {
    final response = api.getCartItem(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartItemResourceApi->getCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**CartItemDTO**](CartItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateCartItem**
> CartItemDTO partialUpdateCartItem(id, cartItemDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartItemResourceApi();
final int id = 789; // int | 
final CartItemDTO cartItemDTO = ; // CartItemDTO | 

try {
    final response = api.partialUpdateCartItem(id, cartItemDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartItemResourceApi->partialUpdateCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **cartItemDTO** | [**CartItemDTO**](CartItemDTO.md)|  | 

### Return type

[**CartItemDTO**](CartItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCartItem**
> CartItemDTO updateCartItem(id, cartItemDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCartItemResourceApi();
final int id = 789; // int | 
final CartItemDTO cartItemDTO = ; // CartItemDTO | 

try {
    final response = api.updateCartItem(id, cartItemDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CartItemResourceApi->updateCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **cartItemDTO** | [**CartItemDTO**](CartItemDTO.md)|  | 

### Return type

[**CartItemDTO**](CartItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

