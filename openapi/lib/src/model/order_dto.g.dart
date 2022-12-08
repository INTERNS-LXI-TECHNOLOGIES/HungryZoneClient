// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderDTO extends OrderDTO {
  @override
  final int? id;
  @override
  final DateTime orderDate;
  @override
  final int quantity;
  @override
  final String unit;
  @override
  final String orderStatus;
  @override
  final FoodItemDTO? food;
  @override
  final UserExtraDTO? recipient;

  factory _$OrderDTO([void Function(OrderDTOBuilder)? updates]) =>
      (new OrderDTOBuilder()..update(updates))._build();

  _$OrderDTO._(
      {this.id,
      required this.orderDate,
      required this.quantity,
      required this.unit,
      required this.orderStatus,
      this.food,
      this.recipient})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(orderDate, r'OrderDTO', 'orderDate');
    BuiltValueNullFieldError.checkNotNull(quantity, r'OrderDTO', 'quantity');
    BuiltValueNullFieldError.checkNotNull(unit, r'OrderDTO', 'unit');
    BuiltValueNullFieldError.checkNotNull(
        orderStatus, r'OrderDTO', 'orderStatus');
  }

  @override
  OrderDTO rebuild(void Function(OrderDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDTOBuilder toBuilder() => new OrderDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDTO &&
        id == other.id &&
        orderDate == other.orderDate &&
        quantity == other.quantity &&
        unit == other.unit &&
        orderStatus == other.orderStatus &&
        food == other.food &&
        recipient == other.recipient;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), orderDate.hashCode),
                        quantity.hashCode),
                    unit.hashCode),
                orderStatus.hashCode),
            food.hashCode),
        recipient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderDTO')
          ..add('id', id)
          ..add('orderDate', orderDate)
          ..add('quantity', quantity)
          ..add('unit', unit)
          ..add('orderStatus', orderStatus)
          ..add('food', food)
          ..add('recipient', recipient))
        .toString();
  }
}

class OrderDTOBuilder implements Builder<OrderDTO, OrderDTOBuilder> {
  _$OrderDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _orderDate;
  DateTime? get orderDate => _$this._orderDate;
  set orderDate(DateTime? orderDate) => _$this._orderDate = orderDate;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  FoodItemDTOBuilder? _food;
  FoodItemDTOBuilder get food => _$this._food ??= new FoodItemDTOBuilder();
  set food(FoodItemDTOBuilder? food) => _$this._food = food;

  UserExtraDTOBuilder? _recipient;
  UserExtraDTOBuilder get recipient =>
      _$this._recipient ??= new UserExtraDTOBuilder();
  set recipient(UserExtraDTOBuilder? recipient) =>
      _$this._recipient = recipient;

  OrderDTOBuilder() {
    OrderDTO._defaults(this);
  }

  OrderDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderDate = $v.orderDate;
      _quantity = $v.quantity;
      _unit = $v.unit;
      _orderStatus = $v.orderStatus;
      _food = $v.food?.toBuilder();
      _recipient = $v.recipient?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderDTO;
  }

  @override
  void update(void Function(OrderDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderDTO build() => _build();

  _$OrderDTO _build() {
    _$OrderDTO _$result;
    try {
      _$result = _$v ??
          new _$OrderDTO._(
              id: id,
              orderDate: BuiltValueNullFieldError.checkNotNull(
                  orderDate, r'OrderDTO', 'orderDate'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, r'OrderDTO', 'quantity'),
              unit: BuiltValueNullFieldError.checkNotNull(
                  unit, r'OrderDTO', 'unit'),
              orderStatus: BuiltValueNullFieldError.checkNotNull(
                  orderStatus, r'OrderDTO', 'orderStatus'),
              food: _food?.build(),
              recipient: _recipient?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'food';
        _food?.build();
        _$failedField = 'recipient';
        _recipient?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrderDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
