// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FoodItemDTO extends FoodItemDTO {
  @override
  final int? id;
  @override
  final int quantity;
  @override
  final String unit;

  factory _$FoodItemDTO([void Function(FoodItemDTOBuilder)? updates]) =>
      (new FoodItemDTOBuilder()..update(updates))._build();

  _$FoodItemDTO._({this.id, required this.quantity, required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(quantity, r'FoodItemDTO', 'quantity');
    BuiltValueNullFieldError.checkNotNull(unit, r'FoodItemDTO', 'unit');
  }

  @override
  FoodItemDTO rebuild(void Function(FoodItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodItemDTOBuilder toBuilder() => new FoodItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodItemDTO &&
        id == other.id &&
        quantity == other.quantity &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), quantity.hashCode), unit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodItemDTO')
          ..add('id', id)
          ..add('quantity', quantity)
          ..add('unit', unit))
        .toString();
  }
}

class FoodItemDTOBuilder implements Builder<FoodItemDTO, FoodItemDTOBuilder> {
  _$FoodItemDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  FoodItemDTOBuilder() {
    FoodItemDTO._defaults(this);
  }

  FoodItemDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _quantity = $v.quantity;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodItemDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodItemDTO;
  }

  @override
  void update(void Function(FoodItemDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodItemDTO build() => _build();

  _$FoodItemDTO _build() {
    final _$result = _$v ??
        new _$FoodItemDTO._(
            id: id,
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'FoodItemDTO', 'quantity'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'FoodItemDTO', 'unit'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
