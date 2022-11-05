//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/food_dto.dart';
import 'package:built_collection/built_collection.dart';
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
/// * [orderStatus] 
/// * [donor] 
/// * [recipient] 
/// * [foods] 
@BuiltValue()
abstract class OrderDTO implements Built<OrderDTO, OrderDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'orderDate')
  DateTime get orderDate;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'orderStatus')
  String get orderStatus;

  @BuiltValueField(wireName: r'donor')
  UserExtraDTO? get donor;

  @BuiltValueField(wireName: r'recipient')
  UserExtraDTO? get recipient;

  @BuiltValueField(wireName: r'foods')
  BuiltSet<FoodDTO>? get foods;

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
    yield r'orderStatus';
    yield serializers.serialize(
      object.orderStatus,
      specifiedType: const FullType(String),
    );
    if (object.donor != null) {
      yield r'donor';
      yield serializers.serialize(
        object.donor,
        specifiedType: const FullType(UserExtraDTO),
      );
    }
    if (object.recipient != null) {
      yield r'recipient';
      yield serializers.serialize(
        object.recipient,
        specifiedType: const FullType(UserExtraDTO),
      );
    }
    if (object.foods != null) {
      yield r'foods';
      yield serializers.serialize(
        object.foods,
        specifiedType: const FullType(BuiltSet, [FullType(FoodDTO)]),
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
        case r'orderStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderStatus = valueDes;
          break;
        case r'donor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserExtraDTO),
          ) as UserExtraDTO;
          result.donor.replace(valueDes);
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserExtraDTO),
          ) as UserExtraDTO;
          result.recipient.replace(valueDes);
          break;
        case r'foods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(FoodDTO)]),
          ) as BuiltSet<FoodDTO>;
          result.foods.replace(valueDes);
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

