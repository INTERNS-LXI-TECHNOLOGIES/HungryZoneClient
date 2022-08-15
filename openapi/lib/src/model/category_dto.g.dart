// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryDTO extends CategoryDTO {
  @override
  final int? id;
  @override
  final String name;

  factory _$CategoryDTO([void Function(CategoryDTOBuilder)? updates]) =>
      (new CategoryDTOBuilder()..update(updates))._build();

  _$CategoryDTO._({this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CategoryDTO', 'name');
  }

  @override
  CategoryDTO rebuild(void Function(CategoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryDTOBuilder toBuilder() => new CategoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryDTO && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryDTO')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class CategoryDTOBuilder implements Builder<CategoryDTO, CategoryDTOBuilder> {
  _$CategoryDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CategoryDTOBuilder() {
    CategoryDTO._defaults(this);
  }

  CategoryDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryDTO;
  }

  @override
  void update(void Function(CategoryDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryDTO build() => _build();

  _$CategoryDTO _build() {
    final _$result = _$v ??
        new _$CategoryDTO._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CategoryDTO', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
