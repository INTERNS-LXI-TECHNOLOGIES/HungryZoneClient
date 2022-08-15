// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginVM extends LoginVM {
  @override
  final String username;
  @override
  final String password;
  @override
  final bool? rememberMe;

  factory _$LoginVM([void Function(LoginVMBuilder)? updates]) =>
      (new LoginVMBuilder()..update(updates))._build();

  _$LoginVM._({required this.username, required this.password, this.rememberMe})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(username, r'LoginVM', 'username');
    BuiltValueNullFieldError.checkNotNull(password, r'LoginVM', 'password');
  }

  @override
  LoginVM rebuild(void Function(LoginVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginVMBuilder toBuilder() => new LoginVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginVM &&
        username == other.username &&
        password == other.password &&
        rememberMe == other.rememberMe;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, username.hashCode), password.hashCode),
        rememberMe.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginVM')
          ..add('username', username)
          ..add('password', password)
          ..add('rememberMe', rememberMe))
        .toString();
  }
}

class LoginVMBuilder implements Builder<LoginVM, LoginVMBuilder> {
  _$LoginVM? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _rememberMe;
  bool? get rememberMe => _$this._rememberMe;
  set rememberMe(bool? rememberMe) => _$this._rememberMe = rememberMe;

  LoginVMBuilder() {
    LoginVM._defaults(this);
  }

  LoginVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _rememberMe = $v.rememberMe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginVM;
  }

  @override
  void update(void Function(LoginVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginVM build() => _build();

  _$LoginVM _build() {
    final _$result = _$v ??
        new _$LoginVM._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'LoginVM', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'LoginVM', 'password'),
            rememberMe: rememberMe);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
