// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartDTO extends CartDTO {
  @override
  final int? id;
  @override
  final UserExtraDTO? user;

  factory _$CartDTO([void Function(CartDTOBuilder)? updates]) =>
      (new CartDTOBuilder()..update(updates))._build();

  _$CartDTO._({this.id, this.user}) : super._();

  @override
  CartDTO rebuild(void Function(CartDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartDTOBuilder toBuilder() => new CartDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartDTO && id == other.id && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartDTO')
          ..add('id', id)
          ..add('user', user))
        .toString();
  }
}

class CartDTOBuilder implements Builder<CartDTO, CartDTOBuilder> {
  _$CartDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  UserExtraDTOBuilder? _user;
  UserExtraDTOBuilder get user => _$this._user ??= new UserExtraDTOBuilder();
  set user(UserExtraDTOBuilder? user) => _$this._user = user;

  CartDTOBuilder() {
    CartDTO._defaults(this);
  }

  CartDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartDTO;
  }

  @override
  void update(void Function(CartDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartDTO build() => _build();

  _$CartDTO _build() {
    _$CartDTO _$result;
    try {
      _$result = _$v ?? new _$CartDTO._(id: id, user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
