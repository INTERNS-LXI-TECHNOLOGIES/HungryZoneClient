//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_vm.g.dart';

/// LoginVM
///
/// Properties:
/// * [username] 
/// * [password] 
/// * [rememberMe] 
abstract class LoginVM implements Built<LoginVM, LoginVMBuilder> {
    @BuiltValueField(wireName: r'username')
    String get username;

    @BuiltValueField(wireName: r'password')
    String get password;

    @BuiltValueField(wireName: r'rememberMe')
    bool? get rememberMe;

    LoginVM._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LoginVMBuilder b) => b;

    factory LoginVM([void updates(LoginVMBuilder b)]) = _$LoginVM;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginVM> get serializer => _$LoginVMSerializer();
}

class _$LoginVMSerializer implements StructuredSerializer<LoginVM> {
    @override
    final Iterable<Type> types = const [LoginVM, _$LoginVM];

    @override
    final String wireName = r'LoginVM';

    @override
    Iterable<Object?> serialize(Serializers serializers, LoginVM object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'username')
            ..add(serializers.serialize(object.username,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        if (object.rememberMe != null) {
            result
                ..add(r'rememberMe')
                ..add(serializers.serialize(object.rememberMe,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    LoginVM deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginVMBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.username = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
                case r'rememberMe':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.rememberMe = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

