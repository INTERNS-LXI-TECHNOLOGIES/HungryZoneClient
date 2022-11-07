//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/food_item_dto.dart';
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
/// * [description] 
/// * [imageUrl] 
/// * [food] 
/// * [category] 
/// * [donor] 
@BuiltValue()
abstract class FoodDTO implements Built<FoodDTO, FoodDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'expiry')
  DateTime get expiry;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'food')
  FoodItemDTO? get food;

  @BuiltValueField(wireName: r'category')
  CategoryDTO? get category;

  @BuiltValueField(wireName: r'donor')
  UserExtraDTO? get donor;

  FoodDTO._();

  factory FoodDTO([void updates(FoodDTOBuilder b)]) = _$FoodDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoodDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoodDTO> get serializer => _$FoodDTOSerializer();
}

class _$FoodDTOSerializer implements PrimitiveSerializer<FoodDTO> {
  @override
  final Iterable<Type> types = const [FoodDTO, _$FoodDTO];

  @override
  final String wireName = r'FoodDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoodDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'expiry';
    yield serializers.serialize(
      object.expiry,
      specifiedType: const FullType(DateTime),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.food != null) {
      yield r'food';
      yield serializers.serialize(
        object.food,
        specifiedType: const FullType(FoodItemDTO),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(CategoryDTO),
      );
    }
    if (object.donor != null) {
      yield r'donor';
      yield serializers.serialize(
        object.donor,
        specifiedType: const FullType(UserExtraDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoodDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FoodDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'expiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiry = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageUrl = valueDes;
          break;
        case r'food':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoodItemDTO),
          ) as FoodItemDTO;
          result.food.replace(valueDes);
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CategoryDTO),
          ) as CategoryDTO;
          result.category.replace(valueDes);
          break;
        case r'donor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserExtraDTO),
          ) as UserExtraDTO;
          result.donor.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FoodDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoodDTOBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

