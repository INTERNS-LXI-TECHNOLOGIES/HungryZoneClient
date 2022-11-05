//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user_extra_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_dto.g.dart';

/// CartDTO
///
/// Properties:
/// * [id] 
/// * [user] 
@BuiltValue()
abstract class CartDTO implements Built<CartDTO, CartDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'user')
  UserExtraDTO? get user;

  CartDTO._();

  factory CartDTO([void updates(CartDTOBuilder b)]) = _$CartDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CartDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CartDTO> get serializer => _$CartDTOSerializer();
}

class _$CartDTOSerializer implements PrimitiveSerializer<CartDTO> {
  @override
  final Iterable<Type> types = const [CartDTO, _$CartDTO];

  @override
  final String wireName = r'CartDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CartDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(UserExtraDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CartDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CartDTOBuilder result,
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
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserExtraDTO),
          ) as UserExtraDTO;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CartDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CartDTOBuilder();
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

