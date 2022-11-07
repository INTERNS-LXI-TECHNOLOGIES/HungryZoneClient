//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/admin_user_dto.dart';
import 'package:openapi/src/model/cart_dto.dart';
import 'package:openapi/src/model/cart_item_dto.dart';
import 'package:openapi/src/model/category_dto.dart';
import 'package:openapi/src/model/chat_dto.dart';
import 'package:openapi/src/model/food_dto.dart';
import 'package:openapi/src/model/food_item_dto.dart';
import 'package:openapi/src/model/jwt_token.dart';
import 'package:openapi/src/model/key_and_password_vm.dart';
import 'package:openapi/src/model/login_vm.dart';
import 'package:openapi/src/model/managed_user_vm.dart';
import 'package:openapi/src/model/message_dto.dart';
import 'package:openapi/src/model/order_dto.dart';
import 'package:openapi/src/model/password_change_dto.dart';
import 'package:openapi/src/model/user.dart';
import 'package:openapi/src/model/user_dto.dart';
import 'package:openapi/src/model/user_extra_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdminUserDTO,
  CartDTO,
  CartItemDTO,
  CategoryDTO,
  ChatDTO,
  FoodDTO,
  FoodItemDTO,
  JWTToken,
  KeyAndPasswordVM,
  LoginVM,
  ManagedUserVM,
  MessageDTO,
  OrderDTO,
  PasswordChangeDTO,
  User,
  UserDTO,
  UserExtraDTO,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrderDTO)]),
        () => ListBuilder<OrderDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatDTO)]),
        () => ListBuilder<ChatDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CategoryDTO)]),
        () => ListBuilder<CategoryDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MessageDTO)]),
        () => ListBuilder<MessageDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AdminUserDTO)]),
        () => ListBuilder<AdminUserDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CartDTO)]),
        () => ListBuilder<CartDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UserExtraDTO)]),
        () => ListBuilder<UserExtraDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CartItemDTO)]),
        () => ListBuilder<CartItemDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FoodItemDTO)]),
        () => ListBuilder<FoodItemDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UserDTO)]),
        () => ListBuilder<UserDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FoodDTO)]),
        () => ListBuilder<FoodDTO>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
