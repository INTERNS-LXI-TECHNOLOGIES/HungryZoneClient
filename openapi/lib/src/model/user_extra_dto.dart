//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_extra_dto.g.dart';

/// UserExtraDTO
///
/// Properties:
/// * [id] 
/// * [phoneNumber] 
/// * [address] 
/// * [locationAtXAxis] 
/// * [locationAtYAxis] 
/// * [user] 
@BuiltValue()
abstract class UserExtraDTO implements Built<UserExtraDTO, UserExtraDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'phoneNumber')
  String get phoneNumber;

  @BuiltValueField(wireName: r'address')
  String get address;

  @BuiltValueField(wireName: r'locationAtXAxis')
  String get locationAtXAxis;

  @BuiltValueField(wireName: r'locationAtYAxis')
  String get locationAtYAxis;

  @BuiltValueField(wireName: r'user')
  UserDTO? get user;

  UserExtraDTO._();

  factory UserExtraDTO([void updates(UserExtraDTOBuilder b)]) = _$UserExtraDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserExtraDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserExtraDTO> get serializer => _$UserExtraDTOSerializer();
}

class _$UserExtraDTOSerializer implements PrimitiveSerializer<UserExtraDTO> {
  @override
  final Iterable<Type> types = const [UserExtraDTO, _$UserExtraDTO];

  @override
  final String wireName = r'UserExtraDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserExtraDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'phoneNumber';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'locationAtXAxis';
    yield serializers.serialize(
      object.locationAtXAxis,
      specifiedType: const FullType(String),
    );
    yield r'locationAtYAxis';
    yield serializers.serialize(
      object.locationAtYAxis,
      specifiedType: const FullType(String),
    );
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(UserDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserExtraDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserExtraDTOBuilder result,
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
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'locationAtXAxis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locationAtXAxis = valueDes;
          break;
        case r'locationAtYAxis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locationAtYAxis = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserDTO),
          ) as UserDTO;
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
  UserExtraDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserExtraDTOBuilder();
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

