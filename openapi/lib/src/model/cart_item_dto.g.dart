// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartItemDTO extends CartItemDTO {
  @override
  final int? id;
  @override
  final int quantity;
  @override
  final FoodDTO? food;
  @override
  final CartDTO? cart;

  factory _$CartItemDTO([void Function(CartItemDTOBuilder)? updates]) =>
      (new CartItemDTOBuilder()..update(updates))._build();

  _$CartItemDTO._({this.id, required this.quantity, this.food, this.cart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(quantity, r'CartItemDTO', 'quantity');
  }

  @override
  CartItemDTO rebuild(void Function(CartItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemDTOBuilder toBuilder() => new CartItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItemDTO &&
        id == other.id &&
        quantity == other.quantity &&
        food == other.food &&
        cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), quantity.hashCode), food.hashCode),
        cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartItemDTO')
          ..add('id', id)
          ..add('quantity', quantity)
          ..add('food', food)
          ..add('cart', cart))
        .toString();
  }
}

class CartItemDTOBuilder implements Builder<CartItemDTO, CartItemDTOBuilder> {
  _$CartItemDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  FoodDTOBuilder? _food;
  FoodDTOBuilder get food => _$this._food ??= new FoodDTOBuilder();
  set food(FoodDTOBuilder? food) => _$this._food = food;

  CartDTOBuilder? _cart;
  CartDTOBuilder get cart => _$this._cart ??= new CartDTOBuilder();
  set cart(CartDTOBuilder? cart) => _$this._cart = cart;

  CartItemDTOBuilder() {
    CartItemDTO._defaults(this);
  }

  CartItemDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _quantity = $v.quantity;
      _food = $v.food?.toBuilder();
      _cart = $v.cart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItemDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartItemDTO;
  }

  @override
  void update(void Function(CartItemDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartItemDTO build() => _build();

  _$CartItemDTO _build() {
    _$CartItemDTO _$result;
    try {
      _$result = _$v ??
          new _$CartItemDTO._(
              id: id,
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, r'CartItemDTO', 'quantity'),
              food: _food?.build(),
              cart: _cart?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'food';
        _food?.build();
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartItemDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
