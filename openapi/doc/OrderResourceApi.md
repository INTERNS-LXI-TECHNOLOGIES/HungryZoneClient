# openapi.api.OrderResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrder**](OrderResourceApi.md#createorder) | **POST** /api/orders | 
[**deleteOrder**](OrderResourceApi.md#deleteorder) | **DELETE** /api/orders/{id} | 
[**getAllOrders**](OrderResourceApi.md#getallorders) | **GET** /api/orders | 
[**getOrder**](OrderResourceApi.md#getorder) | **GET** /api/orders/{id} | 
[**partialUpdateOrder**](OrderResourceApi.md#partialupdateorder) | **PATCH** /api/orders/{id} | 
[**updateOrder**](OrderResourceApi.md#updateorder) | **PUT** /api/orders/{id} | 


# **createOrder**
> OrderDTO createOrder(orderDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderResourceApi();
final OrderDTO orderDTO = ; // OrderDTO | 

try {
    final response = api.createOrder(orderDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderResourceApi->createOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderDTO** | [**OrderDTO**](OrderDTO.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrder**
> deleteOrder(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderResourceApi();
final int id = 789; // int | 

try {
    api.deleteOrder(id);
} catch on DioError (e) {
    print('Exception when calling OrderResourceApi->deleteOrder: $e\n');
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

# **getAllOrders**
> BuiltList<OrderDTO> getAllOrders()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderResourceApi();

try {
    final response = api.getAllOrders();
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderResourceApi->getAllOrders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;OrderDTO&gt;**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrder**
> OrderDTO getOrder(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderResourceApi();
final int id = 789; // int | 

try {
    final response = api.getOrder(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderResourceApi->getOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateOrder**
> OrderDTO partialUpdateOrder(id, orderDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderResourceApi();
final int id = 789; // int | 
final OrderDTO orderDTO = ; // OrderDTO | 

try {
    final response = api.partialUpdateOrder(id, orderDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderResourceApi->partialUpdateOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **orderDTO** | [**OrderDTO**](OrderDTO.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrder**
> OrderDTO updateOrder(id, orderDTO)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderResourceApi();
final int id = 789; // int | 
final OrderDTO orderDTO = ; // OrderDTO | 

try {
    final response = api.updateOrder(id, orderDTO);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderResourceApi->updateOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **orderDTO** | [**OrderDTO**](OrderDTO.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

