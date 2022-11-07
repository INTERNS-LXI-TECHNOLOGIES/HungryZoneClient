//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'food_item_dto.g.dart';

/// FoodItemDTO
///
/// Properties:
/// * [id] 
/// * [quandity] 
/// * [unit] 
@BuiltValue()
abstract class FoodItemDTO implements Built<FoodItemDTO, FoodItemDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'quandity')
  int get quandity;

  @BuiltValueField(wireName: r'unit')
  String get unit;

  FoodItemDTO._();

  factory FoodItemDTO([void updates(FoodItemDTOBuilder b)]) = _$FoodItemDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoodItemDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoodItemDTO> get serializer => _$FoodItemDTOSerializer();
}

class _$FoodItemDTOSerializer implements PrimitiveSerializer<FoodItemDTO> {
  @override
  final Iterable<Type> types = const [FoodItemDTO, _$FoodItemDTO];

  @override
  final String wireName = r'FoodItemDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoodItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'quandity';
    yield serializers.serialize(
      object.quandity,
      specifiedType: const FullType(int),
    );
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FoodItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FoodItemDTOBuilder result,
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
        case r'quandity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quandity = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FoodItemDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoodItemDTOBuilder();
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

