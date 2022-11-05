//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/food_dto.dart';
import 'package:openapi/src/model/cart_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_item_dto.g.dart';

/// CartItemDTO
///
/// Properties:
/// * [id] 
/// * [quantity] 
/// * [food] 
/// * [cart] 
@BuiltValue()
abstract class CartItemDTO implements Built<CartItemDTO, CartItemDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'food')
  FoodDTO? get food;

  @BuiltValueField(wireName: r'cart')
  CartDTO? get cart;

  CartItemDTO._();

  factory CartItemDTO([void updates(CartItemDTOBuilder b)]) = _$CartItemDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CartItemDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CartItemDTO> get serializer => _$CartItemDTOSerializer();
}

class _$CartItemDTOSerializer implements PrimitiveSerializer<CartItemDTO> {
  @override
  final Iterable<Type> types = const [CartItemDTO, _$CartItemDTO];

  @override
  final String wireName = r'CartItemDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CartItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
    if (object.food != null) {
      yield r'food';
      yield serializers.serialize(
        object.food,
        specifiedType: const FullType(FoodDTO),
      );
    }
    if (object.cart != null) {
      yield r'cart';
      yield serializers.serialize(
        object.cart,
        specifiedType: const FullType(CartDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CartItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CartItemDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'food':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoodDTO),
          ) as FoodDTO;
          result.food.replace(valueDes);
          break;
        case r'cart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CartDTO),
          ) as CartDTO;
          result.cart.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CartItemDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CartItemDTOBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

