// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MessageDTO extends MessageDTO {
  @override
  final int? id;
  @override
  final String userLogin;
  @override
  final DateTime chatDate;
  @override
  final String textMessage;
  @override
  final OrderDTO? user;

  factory _$MessageDTO([void Function(MessageDTOBuilder)? updates]) =>
      (new MessageDTOBuilder()..update(updates))._build();

  _$MessageDTO._(
      {this.id,
      required this.userLogin,
      required this.chatDate,
      required this.textMessage,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userLogin, r'MessageDTO', 'userLogin');
    BuiltValueNullFieldError.checkNotNull(chatDate, r'MessageDTO', 'chatDate');
    BuiltValueNullFieldError.checkNotNull(
        textMessage, r'MessageDTO', 'textMessage');
  }

  @override
  MessageDTO rebuild(void Function(MessageDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageDTOBuilder toBuilder() => new MessageDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageDTO &&
        id == other.id &&
        userLogin == other.userLogin &&
        chatDate == other.chatDate &&
        textMessage == other.textMessage &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), userLogin.hashCode),
                chatDate.hashCode),
            textMessage.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessageDTO')
          ..add('id', id)
          ..add('userLogin', userLogin)
          ..add('chatDate', chatDate)
          ..add('textMessage', textMessage)
          ..add('user', user))
        .toString();
  }
}

class MessageDTOBuilder implements Builder<MessageDTO, MessageDTOBuilder> {
  _$MessageDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userLogin;
  String? get userLogin => _$this._userLogin;
  set userLogin(String? userLogin) => _$this._userLogin = userLogin;

  DateTime? _chatDate;
  DateTime? get chatDate => _$this._chatDate;
  set chatDate(DateTime? chatDate) => _$this._chatDate = chatDate;

  String? _textMessage;
  String? get textMessage => _$this._textMessage;
  set textMessage(String? textMessage) => _$this._textMessage = textMessage;

  OrderDTOBuilder? _user;
  OrderDTOBuilder get user => _$this._user ??= new OrderDTOBuilder();
  set user(OrderDTOBuilder? user) => _$this._user = user;

  MessageDTOBuilder() {
    MessageDTO._defaults(this);
  }

  MessageDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userLogin = $v.userLogin;
      _chatDate = $v.chatDate;
      _textMessage = $v.textMessage;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageDTO;
  }

  @override
  void update(void Function(MessageDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessageDTO build() => _build();

  _$MessageDTO _build() {
    _$MessageDTO _$result;
    try {
      _$result = _$v ??
          new _$MessageDTO._(
              id: id,
              userLogin: BuiltValueNullFieldError.checkNotNull(
                  userLogin, r'MessageDTO', 'userLogin'),
              chatDate: BuiltValueNullFieldError.checkNotNull(
                  chatDate, r'MessageDTO', 'chatDate'),
              textMessage: BuiltValueNullFieldError.checkNotNull(
                  textMessage, r'MessageDTO', 'textMessage'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MessageDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
