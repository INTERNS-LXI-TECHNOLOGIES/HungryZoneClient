//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_change_dto.g.dart';

/// PasswordChangeDTO
///
/// Properties:
/// * [currentPassword] 
/// * [newPassword] 
abstract class PasswordChangeDTO implements Built<PasswordChangeDTO, PasswordChangeDTOBuilder> {
    @BuiltValueField(wireName: r'currentPassword')
    String? get currentPassword;

    @BuiltValueField(wireName: r'newPassword')
    String? get newPassword;

    PasswordChangeDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PasswordChangeDTOBuilder b) => b;

    factory PasswordChangeDTO([void updates(PasswordChangeDTOBuilder b)]) = _$PasswordChangeDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<PasswordChangeDTO> get serializer => _$PasswordChangeDTOSerializer();
}

class _$PasswordChangeDTOSerializer implements StructuredSerializer<PasswordChangeDTO> {
    @override
    final Iterable<Type> types = const [PasswordChangeDTO, _$PasswordChangeDTO];

    @override
    final String wireName = r'PasswordChangeDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, PasswordChangeDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.currentPassword != null) {
            result
                ..add(r'currentPassword')
                ..add(serializers.serialize(object.currentPassword,
                    specifiedType: const FullType(String)));
        }
        if (object.newPassword != null) {
            result
                ..add(r'newPassword')
                ..add(serializers.serialize(object.newPassword,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    PasswordChangeDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PasswordChangeDTOBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'currentPassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.currentPassword = valueDes;
                    break;
                case r'newPassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.newPassword = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

