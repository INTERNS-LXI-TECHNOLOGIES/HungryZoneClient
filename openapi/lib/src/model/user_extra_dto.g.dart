// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_extra_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserExtraDTO extends UserExtraDTO {
  @override
  final int? id;
  @override
  final int phoneNumber;
  @override
  final String address;
  @override
  final String locationAtXAxis;
  @override
  final String locationAtYAxis;
  @override
  final UserDTO? user;

  factory _$UserExtraDTO([void Function(UserExtraDTOBuilder)? updates]) =>
      (new UserExtraDTOBuilder()..update(updates))._build();

  _$UserExtraDTO._(
      {this.id,
      required this.phoneNumber,
      required this.address,
      required this.locationAtXAxis,
      required this.locationAtYAxis,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'UserExtraDTO', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(address, r'UserExtraDTO', 'address');
    BuiltValueNullFieldError.checkNotNull(
        locationAtXAxis, r'UserExtraDTO', 'locationAtXAxis');
    BuiltValueNullFieldError.checkNotNull(
        locationAtYAxis, r'UserExtraDTO', 'locationAtYAxis');
  }

  @override
  UserExtraDTO rebuild(void Function(UserExtraDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserExtraDTOBuilder toBuilder() => new UserExtraDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserExtraDTO &&
        id == other.id &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        locationAtXAxis == other.locationAtXAxis &&
        locationAtYAxis == other.locationAtYAxis &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), phoneNumber.hashCode),
                    address.hashCode),
                locationAtXAxis.hashCode),
            locationAtYAxis.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserExtraDTO')
          ..add('id', id)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('locationAtXAxis', locationAtXAxis)
          ..add('locationAtYAxis', locationAtYAxis)
          ..add('user', user))
        .toString();
  }
}

class UserExtraDTOBuilder
    implements Builder<UserExtraDTO, UserExtraDTOBuilder> {
  _$UserExtraDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _phoneNumber;
  int? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _locationAtXAxis;
  String? get locationAtXAxis => _$this._locationAtXAxis;
  set locationAtXAxis(String? locationAtXAxis) =>
      _$this._locationAtXAxis = locationAtXAxis;

  String? _locationAtYAxis;
  String? get locationAtYAxis => _$this._locationAtYAxis;
  set locationAtYAxis(String? locationAtYAxis) =>
      _$this._locationAtYAxis = locationAtYAxis;

  UserDTOBuilder? _user;
  UserDTOBuilder get user => _$this._user ??= new UserDTOBuilder();
  set user(UserDTOBuilder? user) => _$this._user = user;

  UserExtraDTOBuilder() {
    UserExtraDTO._defaults(this);
  }

  UserExtraDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _locationAtXAxis = $v.locationAtXAxis;
      _locationAtYAxis = $v.locationAtYAxis;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserExtraDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserExtraDTO;
  }

  @override
  void update(void Function(UserExtraDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserExtraDTO build() => _build();

  _$UserExtraDTO _build() {
    _$UserExtraDTO _$result;
    try {
      _$result = _$v ??
          new _$UserExtraDTO._(
              id: id,
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, r'UserExtraDTO', 'phoneNumber'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, r'UserExtraDTO', 'address'),
              locationAtXAxis: BuiltValueNullFieldError.checkNotNull(
                  locationAtXAxis, r'UserExtraDTO', 'locationAtXAxis'),
              locationAtYAxis: BuiltValueNullFieldError.checkNotNull(
                  locationAtYAxis, r'UserExtraDTO', 'locationAtYAxis'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserExtraDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
