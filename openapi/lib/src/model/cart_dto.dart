//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/user_extra_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_dto.g.dart';

/// CartDTO
///
/// Properties:
/// * [id] 
/// * [user] 
abstract class CartDTO implements Built<CartDTO, CartDTOBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'user')
    UserExtraDTO? get user;

    CartDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CartDTOBuilder b) => b;

    factory CartDTO([void updates(CartDTOBuilder b)]) = _$CartDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<CartDTO> get serializer => _$CartDTOSerializer();
}

class _$CartDTOSerializer implements StructuredSerializer<CartDTO> {
    @override
    final Iterable<Type> types = const [CartDTO, _$CartDTO];

    @override
    final String wireName = r'CartDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, CartDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.user != null) {
            result
                ..add(r'user')
                ..add(serializers.serialize(object.user,
                    specifiedType: const FullType(UserExtraDTO)));
        }
        return result;
    }

    @override
    CartDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CartDTOBuilder();

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
                case r'user':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserExtraDTO)) as UserExtraDTO;
                    result.user.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

