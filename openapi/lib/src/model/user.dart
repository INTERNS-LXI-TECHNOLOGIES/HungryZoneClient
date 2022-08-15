//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [id] 
/// * [login] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [activated] 
/// * [langKey] 
/// * [imageUrl] 
/// * [resetDate] 
abstract class User implements Built<User, UserBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'login')
    String get login;

    @BuiltValueField(wireName: r'firstName')
    String? get firstName;

    @BuiltValueField(wireName: r'lastName')
    String? get lastName;

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'activated')
    bool get activated;

    @BuiltValueField(wireName: r'langKey')
    String? get langKey;

    @BuiltValueField(wireName: r'imageUrl')
    String? get imageUrl;

    @BuiltValueField(wireName: r'resetDate')
    DateTime? get resetDate;

    User._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserBuilder b) => b;

    factory User([void updates(UserBuilder b)]) = _$User;

    @BuiltValueSerializer(custom: true)
    static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements StructuredSerializer<User> {
    @override
    final Iterable<Type> types = const [User, _$User];

    @override
    final String wireName = r'User';

    @override
    Iterable<Object?> serialize(Serializers serializers, User object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'login')
            ..add(serializers.serialize(object.login,
                specifiedType: const FullType(String)));
        if (object.firstName != null) {
            result
                ..add(r'firstName')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'lastName')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType(String)));
        }
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'activated')
            ..add(serializers.serialize(object.activated,
                specifiedType: const FullType(bool)));
        if (object.langKey != null) {
            result
                ..add(r'langKey')
                ..add(serializers.serialize(object.langKey,
                    specifiedType: const FullType(String)));
        }
        if (object.imageUrl != null) {
            result
                ..add(r'imageUrl')
                ..add(serializers.serialize(object.imageUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.resetDate != null) {
            result
                ..add(r'resetDate')
                ..add(serializers.serialize(object.resetDate,
                    specifiedType: const FullType(DateTime)));
        }
        return result;
    }

    @override
    User deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserBuilder();

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
                case r'firstName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.firstName = valueDes;
                    break;
                case r'lastName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.lastName = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'activated':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.activated = valueDes;
                    break;
                case r'langKey':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.langKey = valueDes;
                    break;
                case r'imageUrl':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imageUrl = valueDes;
                    break;
                case r'resetDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.resetDate = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

