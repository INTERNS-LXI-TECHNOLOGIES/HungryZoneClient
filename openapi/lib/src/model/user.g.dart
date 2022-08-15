// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final int? id;
  @override
  final String login;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final bool activated;
  @override
  final String? langKey;
  @override
  final String? imageUrl;
  @override
  final DateTime? resetDate;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      required this.login,
      this.firstName,
      this.lastName,
      this.email,
      required this.activated,
      this.langKey,
      this.imageUrl,
      this.resetDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(login, r'User', 'login');
    BuiltValueNullFieldError.checkNotNull(activated, r'User', 'activated');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        login == other.login &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        activated == other.activated &&
        langKey == other.langKey &&
        imageUrl == other.imageUrl &&
        resetDate == other.resetDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), login.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        email.hashCode),
                    activated.hashCode),
                langKey.hashCode),
            imageUrl.hashCode),
        resetDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('login', login)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('activated', activated)
          ..add('langKey', langKey)
          ..add('imageUrl', imageUrl)
          ..add('resetDate', resetDate))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _activated;
  bool? get activated => _$this._activated;
  set activated(bool? activated) => _$this._activated = activated;

  String? _langKey;
  String? get langKey => _$this._langKey;
  set langKey(String? langKey) => _$this._langKey = langKey;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DateTime? _resetDate;
  DateTime? get resetDate => _$this._resetDate;
  set resetDate(DateTime? resetDate) => _$this._resetDate = resetDate;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _login = $v.login;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _activated = $v.activated;
      _langKey = $v.langKey;
      _imageUrl = $v.imageUrl;
      _resetDate = $v.resetDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result = _$v ??
        new _$User._(
            id: id,
            login:
                BuiltValueNullFieldError.checkNotNull(login, r'User', 'login'),
            firstName: firstName,
            lastName: lastName,
            email: email,
            activated: BuiltValueNullFieldError.checkNotNull(
                activated, r'User', 'activated'),
            langKey: langKey,
            imageUrl: imageUrl,
            resetDate: resetDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
