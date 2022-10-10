// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FoodDTO extends FoodDTO {
  @override
  final int? id;
  @override
  final String name;
  @override
  final DateTime expiry;
  @override
  final int remainingQty;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final CategoryDTO? category;
  @override
  final UserExtraDTO? donor;

  factory _$FoodDTO([void Function(FoodDTOBuilder)? updates]) =>
      (new FoodDTOBuilder()..update(updates))._build();

  _$FoodDTO._(
      {this.id,
      required this.name,
      required this.expiry,
      required this.remainingQty,
      this.description,
      this.imageUrl,
      this.category,
      this.donor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'FoodDTO', 'name');
    BuiltValueNullFieldError.checkNotNull(expiry, r'FoodDTO', 'expiry');
    BuiltValueNullFieldError.checkNotNull(
        remainingQty, r'FoodDTO', 'remainingQty');
  }

  @override
  FoodDTO rebuild(void Function(FoodDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodDTOBuilder toBuilder() => new FoodDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodDTO &&
        id == other.id &&
        name == other.name &&
        expiry == other.expiry &&
        remainingQty == other.remainingQty &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        category == other.category &&
        donor == other.donor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            expiry.hashCode),
                        remainingQty.hashCode),
                    description.hashCode),
                imageUrl.hashCode),
            category.hashCode),
        donor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodDTO')
          ..add('id', id)
          ..add('name', name)
          ..add('expiry', expiry)
          ..add('remainingQty', remainingQty)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('category', category)
          ..add('donor', donor))
        .toString();
  }
}

class FoodDTOBuilder implements Builder<FoodDTO, FoodDTOBuilder> {
  _$FoodDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _expiry;
  DateTime? get expiry => _$this._expiry;
  set expiry(DateTime? expiry) => _$this._expiry = expiry;

  int? _remainingQty;
  int? get remainingQty => _$this._remainingQty;
  set remainingQty(int? remainingQty) => _$this._remainingQty = remainingQty;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  CategoryDTOBuilder? _category;
  CategoryDTOBuilder get category =>
      _$this._category ??= new CategoryDTOBuilder();
  set category(CategoryDTOBuilder? category) => _$this._category = category;

  UserExtraDTOBuilder? _donor;
  UserExtraDTOBuilder get donor => _$this._donor ??= new UserExtraDTOBuilder();
  set donor(UserExtraDTOBuilder? donor) => _$this._donor = donor;

  FoodDTOBuilder() {
    FoodDTO._defaults(this);
  }

  FoodDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _expiry = $v.expiry;
      _remainingQty = $v.remainingQty;
      _description = $v.description;
      _imageUrl = $v.imageUrl;
      _category = $v.category?.toBuilder();
      _donor = $v.donor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodDTO;
  }

  @override
  void update(void Function(FoodDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodDTO build() => _build();

  _$FoodDTO _build() {
    _$FoodDTO _$result;
    try {
      _$result = _$v ??
          new _$FoodDTO._(
              id: id,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'FoodDTO', 'name'),
              expiry: BuiltValueNullFieldError.checkNotNull(
                  expiry, r'FoodDTO', 'expiry'),
              remainingQty: BuiltValueNullFieldError.checkNotNull(
                  remainingQty, r'FoodDTO', 'remainingQty'),
              description: description,
              imageUrl: imageUrl,
              category: _category?.build(),
              donor: _donor?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'donor';
        _donor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FoodDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
