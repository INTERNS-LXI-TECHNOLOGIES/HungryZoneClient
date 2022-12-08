//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/food_item_dto.dart';
import 'package:openapi/src/model/user_extra_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_dto.g.dart';

/// OrderDTO
///
/// Properties:
/// * [id] 
/// * [orderDate] 
/// * [quantity] 
/// * [unit] 
/// * [orderStatus] 
/// * [food] 
/// * [recipient] 
@BuiltValue()
abstract class OrderDTO implements Built<OrderDTO, OrderDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'orderDate')
  DateTime get orderDate;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'unit')
  String get unit;

  @BuiltValueField(wireName: r'orderStatus')
  String get orderStatus;

  @BuiltValueField(wireName: r'food')
  FoodItemDTO? get food;

  @BuiltValueField(wireName: r'recipient')
  UserExtraDTO? get recipient;

  OrderDTO._();

  factory OrderDTO([void updates(OrderDTOBuilder b)]) = _$OrderDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderDTO> get serializer => _$OrderDTOSerializer();
}

class _$OrderDTOSerializer implements PrimitiveSerializer<OrderDTO> {
  @override
  final Iterable<Type> types = const [OrderDTO, _$OrderDTO];

  @override
  final String wireName = r'OrderDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'orderDate';
    yield serializers.serialize(
      object.orderDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(String),
    );
    yield r'orderStatus';
    yield serializers.serialize(
      object.orderStatus,
      specifiedType: const FullType(String),
    );
    if (object.food != null) {
      yield r'food';
      yield serializers.serialize(
        object.food,
        specifiedType: const FullType(FoodItemDTO),
      );
    }
    if (object.recipient != null) {
      yield r'recipient';
      yield serializers.serialize(
        object.recipient,
        specifiedType: const FullType(UserExtraDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderDTOBuilder result,
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
        case r'orderDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.orderDate = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unit = valueDes;
          break;
        case r'orderStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderStatus = valueDes;
          break;
        case r'food':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoodItemDTO),
          ) as FoodItemDTO;
          result.food.replace(valueDes);
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserExtraDTO),
          ) as UserExtraDTO;
          result.recipient.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderDTOBuilder();
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

