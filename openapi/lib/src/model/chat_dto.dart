//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/user_extra_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_dto.g.dart';

/// ChatDTO
///
/// Properties:
/// * [id] 
/// * [userLogin] 
/// * [chatDate] 
/// * [textMessage] 
/// * [users] 
@BuiltValue()
abstract class ChatDTO implements Built<ChatDTO, ChatDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'userLogin')
  String get userLogin;

  @BuiltValueField(wireName: r'chatDate')
  DateTime get chatDate;

  @BuiltValueField(wireName: r'textMessage')
  String get textMessage;

  @BuiltValueField(wireName: r'users')
  BuiltSet<UserExtraDTO>? get users;

  ChatDTO._();

  factory ChatDTO([void updates(ChatDTOBuilder b)]) = _$ChatDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatDTO> get serializer => _$ChatDTOSerializer();
}

class _$ChatDTOSerializer implements PrimitiveSerializer<ChatDTO> {
  @override
  final Iterable<Type> types = const [ChatDTO, _$ChatDTO];

  @override
  final String wireName = r'ChatDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatDTO object, {
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
    if (object.users != null) {
      yield r'users';
      yield serializers.serialize(
        object.users,
        specifiedType: const FullType(BuiltSet, [FullType(UserExtraDTO)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatDTOBuilder result,
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
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(UserExtraDTO)]),
          ) as BuiltSet<UserExtraDTO>;
          result.users.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatDTOBuilder();
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

