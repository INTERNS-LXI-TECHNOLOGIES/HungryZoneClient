//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_dto.g.dart';

/// UserDTO
///
/// Properties:
/// * [id] 
/// * [login] 
abstract class UserDTO implements Built<UserDTO, UserDTOBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'login')
    String? get login;

    UserDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserDTOBuilder b) => b;

    factory UserDTO([void updates(UserDTOBuilder b)]) = _$UserDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserDTO> get serializer => _$UserDTOSerializer();
}

class _$UserDTOSerializer implements StructuredSerializer<UserDTO> {
    @override
    final Iterable<Type> types = const [UserDTO, _$UserDTO];

    @override
    final String wireName = r'UserDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.login != null) {
            result
                ..add(r'login')
                ..add(serializers.serialize(object.login,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserDTOBuilder();

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
                case r'login':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.login = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

