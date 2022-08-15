//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'managed_user_vm.g.dart';

/// ManagedUserVM
///
/// Properties:
/// * [id] 
/// * [login] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [imageUrl] 
/// * [activated] 
/// * [langKey] 
/// * [createdBy] 
/// * [createdDate] 
/// * [lastModifiedBy] 
/// * [lastModifiedDate] 
/// * [authorities] 
/// * [password] 
abstract class ManagedUserVM implements Built<ManagedUserVM, ManagedUserVMBuilder> {
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

    @BuiltValueField(wireName: r'imageUrl')
    String? get imageUrl;

    @BuiltValueField(wireName: r'activated')
    bool? get activated;

    @BuiltValueField(wireName: r'langKey')
    String? get langKey;

    @BuiltValueField(wireName: r'createdBy')
    String? get createdBy;

    @BuiltValueField(wireName: r'createdDate')
    DateTime? get createdDate;

    @BuiltValueField(wireName: r'lastModifiedBy')
    String? get lastModifiedBy;

    @BuiltValueField(wireName: r'lastModifiedDate')
    DateTime? get lastModifiedDate;

    @BuiltValueField(wireName: r'authorities')
    BuiltSet<String>? get authorities;

    @BuiltValueField(wireName: r'password')
    String? get password;

    ManagedUserVM._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ManagedUserVMBuilder b) => b;

    factory ManagedUserVM([void updates(ManagedUserVMBuilder b)]) = _$ManagedUserVM;

    @BuiltValueSerializer(custom: true)
    static Serializer<ManagedUserVM> get serializer => _$ManagedUserVMSerializer();
}

class _$ManagedUserVMSerializer implements StructuredSerializer<ManagedUserVM> {
    @override
    final Iterable<Type> types = const [ManagedUserVM, _$ManagedUserVM];

    @override
    final String wireName = r'ManagedUserVM';

    @override
    Iterable<Object?> serialize(Serializers serializers, ManagedUserVM object,
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
        if (object.imageUrl != null) {
            result
                ..add(r'imageUrl')
                ..add(serializers.serialize(object.imageUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.activated != null) {
            result
                ..add(r'activated')
                ..add(serializers.serialize(object.activated,
                    specifiedType: const FullType(bool)));
        }
        if (object.langKey != null) {
            result
                ..add(r'langKey')
                ..add(serializers.serialize(object.langKey,
                    specifiedType: const FullType(String)));
        }
        if (object.createdBy != null) {
            result
                ..add(r'createdBy')
                ..add(serializers.serialize(object.createdBy,
                    specifiedType: const FullType(String)));
        }
        if (object.createdDate != null) {
            result
                ..add(r'createdDate')
                ..add(serializers.serialize(object.createdDate,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.lastModifiedBy != null) {
            result
                ..add(r'lastModifiedBy')
                ..add(serializers.serialize(object.lastModifiedBy,
                    specifiedType: const FullType(String)));
        }
        if (object.lastModifiedDate != null) {
            result
                ..add(r'lastModifiedDate')
                ..add(serializers.serialize(object.lastModifiedDate,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.authorities != null) {
            result
                ..add(r'authorities')
                ..add(serializers.serialize(object.authorities,
                    specifiedType: const FullType(BuiltSet, [FullType(String)])));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ManagedUserVM deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ManagedUserVMBuilder();

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
                case r'imageUrl':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imageUrl = valueDes;
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
                case r'createdBy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.createdBy = valueDes;
                    break;
                case r'createdDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.createdDate = valueDes;
                    break;
                case r'lastModifiedBy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.lastModifiedBy = valueDes;
                    break;
                case r'lastModifiedDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.lastModifiedDate = valueDes;
                    break;
                case r'authorities':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltSet, [FullType(String)])) as BuiltSet<String>;
                    result.authorities.replace(valueDes);
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

