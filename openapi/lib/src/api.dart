//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/account_resource_api.dart';
import 'package:openapi/src/api/cart_item_resource_api.dart';
import 'package:openapi/src/api/cart_resource_api.dart';
import 'package:openapi/src/api/category_resource_api.dart';
import 'package:openapi/src/api/chat_resource_api.dart';
import 'package:openapi/src/api/food_item_resource_api.dart';
import 'package:openapi/src/api/food_resource_api.dart';
import 'package:openapi/src/api/message_resource_api.dart';
import 'package:openapi/src/api/order_resource_api.dart';
import 'package:openapi/src/api/public_user_resource_api.dart';
import 'package:openapi/src/api/user_extra_resource_api.dart';
import 'package:openapi/src/api/user_jwt_controller_api.dart';
import 'package:openapi/src/api/user_resource_api.dart';

class Openapi {
  static const String basePath = r'http://localhost:8080';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AccountResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountResourceApi getAccountResourceApi() {
    return AccountResourceApi(dio, serializers);
  }

  /// Get CartItemResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CartItemResourceApi getCartItemResourceApi() {
    return CartItemResourceApi(dio, serializers);
  }

  /// Get CartResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CartResourceApi getCartResourceApi() {
    return CartResourceApi(dio, serializers);
  }

  /// Get CategoryResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CategoryResourceApi getCategoryResourceApi() {
    return CategoryResourceApi(dio, serializers);
  }

  /// Get ChatResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatResourceApi getChatResourceApi() {
    return ChatResourceApi(dio, serializers);
  }

  /// Get FoodItemResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FoodItemResourceApi getFoodItemResourceApi() {
    return FoodItemResourceApi(dio, serializers);
  }

  /// Get FoodResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FoodResourceApi getFoodResourceApi() {
    return FoodResourceApi(dio, serializers);
  }

  /// Get MessageResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MessageResourceApi getMessageResourceApi() {
    return MessageResourceApi(dio, serializers);
  }

  /// Get OrderResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrderResourceApi getOrderResourceApi() {
    return OrderResourceApi(dio, serializers);
  }

  /// Get PublicUserResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PublicUserResourceApi getPublicUserResourceApi() {
    return PublicUserResourceApi(dio, serializers);
  }

  /// Get UserExtraResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserExtraResourceApi getUserExtraResourceApi() {
    return UserExtraResourceApi(dio, serializers);
  }

  /// Get UserJwtControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserJwtControllerApi getUserJwtControllerApi() {
    return UserJwtControllerApi(dio, serializers);
  }

  /// Get UserResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserResourceApi getUserResourceApi() {
    return UserResourceApi(dio, serializers);
  }
}
