//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/food_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/user_extra_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_dto.g.dart';

/// OrderDTO
///
/// Properties:
/// * [id] 
/// * [orderDate] 
/// * [quantity] 
/// * [orderStatus] 
/// * [donor] 
/// * [recipient] 
/// * [foods] 
abstract class OrderDTO implements Built<OrderDTO, OrderDTOBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'orderDate')
    DateTime get orderDate;

    @BuiltValueField(wireName: r'quantity')
    int get quantity;

    @BuiltValueField(wireName: r'orderStatus')
    String get orderStatus;

    @BuiltValueField(wireName: r'donor')
    UserExtraDTO? get donor;

    @BuiltValueField(wireName: r'recipient')
    UserExtraDTO? get recipient;

    @BuiltValueField(wireName: r'foods')
    BuiltSet<FoodDTO>? get foods;

    OrderDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrderDTOBuilder b) => b;

    factory OrderDTO([void updates(OrderDTOBuilder b)]) = _$OrderDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderDTO> get serializer => _$OrderDTOSerializer();
}

class _$OrderDTOSerializer implements StructuredSerializer<OrderDTO> {
    @override
    final Iterable<Type> types = const [OrderDTO, _$OrderDTO];

    @override
    final String wireName = r'OrderDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrderDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'orderDate')
            ..add(serializers.serialize(object.orderDate,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'quantity')
            ..add(serializers.serialize(object.quantity,
                specifiedType: const FullType(int)));
        result
            ..add(r'orderStatus')
            ..add(serializers.serialize(object.orderStatus,
                specifiedType: const FullType(String)));
        if (object.donor != null) {
            result
                ..add(r'donor')
                ..add(serializers.serialize(object.donor,
                    specifiedType: const FullType(UserExtraDTO)));
        }
        if (object.recipient != null) {
            result
                ..add(r'recipient')
                ..add(serializers.serialize(object.recipient,
                    specifiedType: const FullType(UserExtraDTO)));
        }
        if (object.foods != null) {
            result
                ..add(r'foods')
                ..add(serializers.serialize(object.foods,
                    specifiedType: const FullType(BuiltSet, [FullType(FoodDTO)])));
        }
        return result;
    }

    @override
    OrderDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderDTOBuilder();

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
                case r'orderDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.orderDate = valueDes;
                    break;
                case r'quantity':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.quantity = valueDes;
                    break;
                case r'orderStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.orderStatus = valueDes;
                    break;
                case r'donor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserExtraDTO)) as UserExtraDTO;
                    result.donor.replace(valueDes);
                    break;
                case r'recipient':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserExtraDTO)) as UserExtraDTO;
                    result.recipient.replace(valueDes);
                    break;
                case r'foods':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltSet, [FullType(FoodDTO)])) as BuiltSet<FoodDTO>;
                    result.foods.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

