//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_dto.g.dart';

/// CategoryDTO
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [imageUrl] 
abstract class CategoryDTO implements Built<CategoryDTO, CategoryDTOBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'imageUrl')
    String? get imageUrl;

    CategoryDTO._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CategoryDTOBuilder b) => b;

    factory CategoryDTO([void updates(CategoryDTOBuilder b)]) = _$CategoryDTO;

    @BuiltValueSerializer(custom: true)
    static Serializer<CategoryDTO> get serializer => _$CategoryDTOSerializer();
}

class _$CategoryDTOSerializer implements StructuredSerializer<CategoryDTO> {
    @override
    final Iterable<Type> types = const [CategoryDTO, _$CategoryDTO];

    @override
    final String wireName = r'CategoryDTO';

    @override
    Iterable<Object?> serialize(Serializers serializers, CategoryDTO object,
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
        if (object.imageUrl != null) {
            result
                ..add(r'imageUrl')
                ..add(serializers.serialize(object.imageUrl,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CategoryDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CategoryDTOBuilder();

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
                case r'imageUrl':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imageUrl = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

