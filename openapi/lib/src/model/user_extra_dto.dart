//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserExtraDTOBuilder b) => b;

    factory UserExtraDTO([void updates(UserExtraDTOBuilder b)]) = _$UserExtraDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserExtraDTO> get serializer => _$UserExtraDTOSerializer();
}

class _$UserExtraDTOSerializer implements StructuredSerializer<UserExtraDTO> {
    @override
    final Iterable<Type> types = const [UserExtraDTO, _$UserExtraDTO];

    @override
    final String wireName = r'UserExtraDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserExtraDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'phoneNumber')
            ..add(serializers.serialize(object.phoneNumber,
                specifiedType: const FullType(String)));
        result
            ..add(r'address')
            ..add(serializers.serialize(object.address,
                specifiedType: const FullType(String)));
        result
            ..add(r'locationAtXAxis')
            ..add(serializers.serialize(object.locationAtXAxis,
                specifiedType: const FullType(String)));
        result
            ..add(r'locationAtYAxis')
            ..add(serializers.serialize(object.locationAtYAxis,
                specifiedType: const FullType(String)));
        if (object.user != null) {
            result
                ..add(r'user')
                ..add(serializers.serialize(object.user,
                    specifiedType: const FullType(UserDTO)));
        }
        return result;
    }

    @override
    UserExtraDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserExtraDTOBuilder();

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
                case r'phoneNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.phoneNumber = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.address = valueDes;
                    break;
                case r'locationAtXAxis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.locationAtXAxis = valueDes;
                    break;
                case r'locationAtYAxis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.locationAtYAxis = valueDes;
                    break;
                case r'user':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserDTO)) as UserDTO;
                    result.user.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

