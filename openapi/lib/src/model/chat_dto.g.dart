// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatDTO extends ChatDTO {
  @override
  final int? id;
  @override
  final DateTime chatDate;
  @override
  final String textMessage;
  @override
  final BuiltSet<UserExtraDTO>? users;

  factory _$ChatDTO([void Function(ChatDTOBuilder)? updates]) =>
      (new ChatDTOBuilder()..update(updates))._build();

  _$ChatDTO._(
      {this.id, required this.chatDate, required this.textMessage, this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(chatDate, r'ChatDTO', 'chatDate');
    BuiltValueNullFieldError.checkNotNull(
        textMessage, r'ChatDTO', 'textMessage');
  }

  @override
  ChatDTO rebuild(void Function(ChatDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatDTOBuilder toBuilder() => new ChatDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatDTO &&
        id == other.id &&
        chatDate == other.chatDate &&
        textMessage == other.textMessage &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), chatDate.hashCode), textMessage.hashCode),
        users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatDTO')
          ..add('id', id)
          ..add('chatDate', chatDate)
          ..add('textMessage', textMessage)
          ..add('users', users))
        .toString();
  }
}

class ChatDTOBuilder implements Builder<ChatDTO, ChatDTOBuilder> {
  _$ChatDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _chatDate;
  DateTime? get chatDate => _$this._chatDate;
  set chatDate(DateTime? chatDate) => _$this._chatDate = chatDate;

  String? _textMessage;
  String? get textMessage => _$this._textMessage;
  set textMessage(String? textMessage) => _$this._textMessage = textMessage;

  SetBuilder<UserExtraDTO>? _users;
  SetBuilder<UserExtraDTO> get users =>
      _$this._users ??= new SetBuilder<UserExtraDTO>();
  set users(SetBuilder<UserExtraDTO>? users) => _$this._users = users;

  ChatDTOBuilder() {
    ChatDTO._defaults(this);
  }

  ChatDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _chatDate = $v.chatDate;
      _textMessage = $v.textMessage;
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatDTO;
  }

  @override
  void update(void Function(ChatDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatDTO build() => _build();

  _$ChatDTO _build() {
    _$ChatDTO _$result;
    try {
      _$result = _$v ??
          new _$ChatDTO._(
              id: id,
              chatDate: BuiltValueNullFieldError.checkNotNull(
                  chatDate, r'ChatDTO', 'chatDate'),
              textMessage: BuiltValueNullFieldError.checkNotNull(
                  textMessage, r'ChatDTO', 'textMessage'),
              users: _users?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
