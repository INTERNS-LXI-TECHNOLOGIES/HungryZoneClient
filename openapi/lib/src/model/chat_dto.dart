//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ChatDTOBuilder b) => b;

    factory ChatDTO([void updates(ChatDTOBuilder b)]) = _$ChatDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<ChatDTO> get serializer => _$ChatDTOSerializer();
}

class _$ChatDTOSerializer implements StructuredSerializer<ChatDTO> {
    @override
    final Iterable<Type> types = const [ChatDTO, _$ChatDTO];

    @override
    final String wireName = r'ChatDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, ChatDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'userLogin')
            ..add(serializers.serialize(object.userLogin,
                specifiedType: const FullType(String)));
        result
            ..add(r'chatDate')
            ..add(serializers.serialize(object.chatDate,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'textMessage')
            ..add(serializers.serialize(object.textMessage,
                specifiedType: const FullType(String)));
        if (object.users != null) {
            result
                ..add(r'users')
                ..add(serializers.serialize(object.users,
                    specifiedType: const FullType(BuiltSet, [FullType(UserExtraDTO)])));
        }
        return result;
    }

    @override
    ChatDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ChatDTOBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'userLogin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userLogin = valueDes;
                    break;
                case r'chatDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.chatDate = valueDes;
                    break;
                case r'textMessage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.textMessage = valueDes;
                    break;
                case r'users':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltSet, [FullType(UserExtraDTO)])) as BuiltSet<UserExtraDTO>;
                    result.users.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

