//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_and_password_vm.g.dart';

/// KeyAndPasswordVM
///
/// Properties:
/// * [key] 
/// * [newPassword] 
abstract class KeyAndPasswordVM implements Built<KeyAndPasswordVM, KeyAndPasswordVMBuilder> {
    @BuiltValueField(wireName: r'key')
    String? get key;

    @BuiltValueField(wireName: r'newPassword')
    String? get newPassword;

    KeyAndPasswordVM._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(KeyAndPasswordVMBuilder b) => b;

    factory KeyAndPasswordVM([void updates(KeyAndPasswordVMBuilder b)]) = _$KeyAndPasswordVM;

    @BuiltValueSerializer(custom: true)
    static Serializer<KeyAndPasswordVM> get serializer => _$KeyAndPasswordVMSerializer();
}

class _$KeyAndPasswordVMSerializer implements StructuredSerializer<KeyAndPasswordVM> {
    @override
    final Iterable<Type> types = const [KeyAndPasswordVM, _$KeyAndPasswordVM];

    @override
    final String wireName = r'KeyAndPasswordVM';

    @override
    Iterable<Object?> serialize(Serializers serializers, KeyAndPasswordVM object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.key != null) {
            result
                ..add(r'key')
                ..add(serializers.serialize(object.key,
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
    KeyAndPasswordVM deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = KeyAndPasswordVMBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'key':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.key = valueDes;
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

