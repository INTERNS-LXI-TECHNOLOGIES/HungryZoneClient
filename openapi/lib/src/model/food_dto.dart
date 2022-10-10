//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/category_dto.dart';
import 'package:openapi/src/model/user_extra_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'food_dto.g.dart';

/// FoodDTO
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [expiry] 
/// * [remainingQty] 
/// * [description] 
/// * [imageUrl] 
/// * [category] 
/// * [donor] 
abstract class FoodDTO implements Built<FoodDTO, FoodDTOBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'expiry')
    DateTime get expiry;

    @BuiltValueField(wireName: r'remainingQty')
    int get remainingQty;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'imageUrl')
    String? get imageUrl;

    @BuiltValueField(wireName: r'category')
    CategoryDTO? get category;

    @BuiltValueField(wireName: r'donor')
    UserExtraDTO? get donor;

    FoodDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FoodDTOBuilder b) => b;

    factory FoodDTO([void updates(FoodDTOBuilder b)]) = _$FoodDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<FoodDTO> get serializer => _$FoodDTOSerializer();
}

class _$FoodDTOSerializer implements StructuredSerializer<FoodDTO> {
    @override
    final Iterable<Type> types = const [FoodDTO, _$FoodDTO];

    @override
    final String wireName = r'FoodDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, FoodDTO object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'expiry')
            ..add(serializers.serialize(object.expiry,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'remainingQty')
            ..add(serializers.serialize(object.remainingQty,
                specifiedType: const FullType(int)));
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.imageUrl != null) {
            result
                ..add(r'imageUrl')
                ..add(serializers.serialize(object.imageUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.category != null) {
            result
                ..add(r'category')
                ..add(serializers.serialize(object.category,
                    specifiedType: const FullType(CategoryDTO)));
        }
        if (object.donor != null) {
            result
                ..add(r'donor')
                ..add(serializers.serialize(object.donor,
                    specifiedType: const FullType(UserExtraDTO)));
        }
        return result;
    }

    @override
    FoodDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FoodDTOBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'expiry':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.expiry = valueDes;
                    break;
                case r'remainingQty':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.remainingQty = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'imageUrl':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imageUrl = valueDes;
                    break;
                case r'category':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CategoryDTO)) as CategoryDTO;
                    result.category.replace(valueDes);
                    break;
                case r'donor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserExtraDTO)) as UserExtraDTO;
                    result.donor.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

