// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_channel_editor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchChannelEditor _$TwitchChannelEditorFromJson(Map<String, dynamic> json) {
  return _TwitchChannelEditor.fromJson(json);
}

/// @nodoc
mixin _$TwitchChannelEditor {
  /// User ID of the editor.
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Display name of the editor.
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;

  /// Date and time the editor was given editor permissions.
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchChannelEditorCopyWith<TwitchChannelEditor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchChannelEditorCopyWith<$Res> {
  factory $TwitchChannelEditorCopyWith(
          TwitchChannelEditor value, $Res Function(TwitchChannelEditor) then) =
      _$TwitchChannelEditorCopyWithImpl<$Res, TwitchChannelEditor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$TwitchChannelEditorCopyWithImpl<$Res, $Val extends TwitchChannelEditor>
    implements $TwitchChannelEditorCopyWith<$Res> {
  _$TwitchChannelEditorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchChannelEditorImplCopyWith<$Res>
    implements $TwitchChannelEditorCopyWith<$Res> {
  factory _$$TwitchChannelEditorImplCopyWith(_$TwitchChannelEditorImpl value,
          $Res Function(_$TwitchChannelEditorImpl) then) =
      __$$TwitchChannelEditorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$TwitchChannelEditorImplCopyWithImpl<$Res>
    extends _$TwitchChannelEditorCopyWithImpl<$Res, _$TwitchChannelEditorImpl>
    implements _$$TwitchChannelEditorImplCopyWith<$Res> {
  __$$TwitchChannelEditorImplCopyWithImpl(_$TwitchChannelEditorImpl _value,
      $Res Function(_$TwitchChannelEditorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? createdAt = null,
  }) {
    return _then(_$TwitchChannelEditorImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchChannelEditorImpl implements _TwitchChannelEditor {
  const _$TwitchChannelEditorImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$TwitchChannelEditorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchChannelEditorImplFromJson(json);

  /// User ID of the editor.
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// Display name of the editor.
  @override
  @JsonKey(name: 'user_name')
  final String userName;

  /// Date and time the editor was given editor permissions.
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'TwitchChannelEditor(userId: $userId, userName: $userName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchChannelEditorImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchChannelEditorImplCopyWith<_$TwitchChannelEditorImpl> get copyWith =>
      __$$TwitchChannelEditorImplCopyWithImpl<_$TwitchChannelEditorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchChannelEditorImplToJson(
      this,
    );
  }
}

abstract class _TwitchChannelEditor implements TwitchChannelEditor {
  const factory _TwitchChannelEditor(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'user_name') required final String userName,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$TwitchChannelEditorImpl;

  factory _TwitchChannelEditor.fromJson(Map<String, dynamic> json) =
      _$TwitchChannelEditorImpl.fromJson;

  @override

  /// User ID of the editor.
  @JsonKey(name: 'user_id')
  String get userId;
  @override

  /// Display name of the editor.
  @JsonKey(name: 'user_name')
  String get userName;
  @override

  /// Date and time the editor was given editor permissions.
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TwitchChannelEditorImplCopyWith<_$TwitchChannelEditorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
