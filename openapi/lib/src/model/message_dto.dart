//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/order_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_dto.g.dart';

/// MessageDTO
///
/// Properties:
/// * [id] 
/// * [userLogin] 
/// * [chatDate] 
/// * [textMessage] 
/// * [user] 
@BuiltValue()
abstract class MessageDTO implements Built<MessageDTO, MessageDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'userLogin')
  String get userLogin;

  @BuiltValueField(wireName: r'chatDate')
  DateTime get chatDate;

  @BuiltValueField(wireName: r'textMessage')
  String get textMessage;

  @BuiltValueField(wireName: r'user')
  OrderDTO? get user;

  MessageDTO._();

  factory MessageDTO([void updates(MessageDTOBuilder b)]) = _$MessageDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageDTO> get serializer => _$MessageDTOSerializer();
}

class _$MessageDTOSerializer implements PrimitiveSerializer<MessageDTO> {
  @override
  final Iterable<Type> types = const [MessageDTO, _$MessageDTO];

  @override
  final String wireName = r'MessageDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'userLogin';
    yield serializers.serialize(
      object.userLogin,
      specifiedType: const FullType(String),
    );
    yield r'chatDate';
    yield serializers.serialize(
      object.chatDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'textMessage';
    yield serializers.serialize(
      object.textMessage,
      specifiedType: const FullType(String),
    );
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(OrderDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageDTOBuilder result,
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
        case r'userLogin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userLogin = valueDes;
          break;
        case r'chatDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.chatDate = valueDes;
          break;
        case r'textMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.textMessage = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDTO),
          ) as OrderDTO;
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
  MessageDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageDTOBuilder();
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

