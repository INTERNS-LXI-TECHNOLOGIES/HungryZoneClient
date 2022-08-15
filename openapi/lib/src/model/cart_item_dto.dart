//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/food_dto.dart';
import 'package:openapi/src/model/cart_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_item_dto.g.dart';

/// CartItemDTO
///
/// Properties:
/// * [id] 
/// * [quantity] 
/// * [food] 
/// * [cart] 
abstract class CartItemDTO implements Built<CartItemDTO, CartItemDTOBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'quantity')
    int get quantity;

    @BuiltValueField(wireName: r'food')
    FoodDTO? get food;

    @BuiltValueField(wireName: r'cart')
    CartDTO? get cart;

    CartItemDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CartItemDTOBuilder b) => b;

    factory CartItemDTO([void updates(CartItemDTOBuilder b)]) = _$CartItemDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<CartItemDTO> get serializer => _$CartItemDTOSerializer();
}

class _$CartItemDTOSerializer implements StructuredSerializer<CartItemDTO> {
    @override
    final Iterable<Type> types = const [CartItemDTO, _$CartItemDTO];

    @override
    final String wireName = r'CartItemDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, CartItemDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'quantity')
            ..add(serializers.serialize(object.quantity,
                specifiedType: const FullType(int)));
        if (object.food != null) {
            result
                ..add(r'food')
                ..add(serializers.serialize(object.food,
                    specifiedType: const FullType(FoodDTO)));
        }
        if (object.cart != null) {
            result
                ..add(r'cart')
                ..add(serializers.serialize(object.cart,
                    specifiedType: const FullType(CartDTO)));
        }
        return result;
    }

    @override
    CartItemDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CartItemDTOBuilder();

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
                case r'quantity':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.quantity = valueDes;
                    break;
                case r'food':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FoodDTO)) as FoodDTO;
                    result.food.replace(valueDes);
                    break;
                case r'cart':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CartDTO)) as CartDTO;
                    result.cart.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

