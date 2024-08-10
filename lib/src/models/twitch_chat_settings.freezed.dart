// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_chat_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchChatSettings _$TwitchChatSettingsFromJson(Map<String, dynamic> json) {
  return _TwitchChatSettings.fromJson(json);
}

/// @nodoc
mixin _$TwitchChatSettings {
  /// The ID of the broadcaster specified in the request.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;

  /// A Boolean value that determines whether chat messages must contain only
  /// emotes. Is `true`, if only messages that are 100% emotes are allowed;
  /// otherwise, `false`.
  @JsonKey(name: 'emote_mode')
  bool get emoteMode => throw _privateConstructorUsedError;

  /// A Boolean value that determines whether the broadcaster restricts the
  /// chat room to followers only, based on how long they’ve followed.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to followers only;
  /// otherwise, `false`.
  ///
  /// See [followerModeDuration] for how long the followers must have followed
  /// the broadcaster to participate in the chat room.
  @JsonKey(name: 'follower_mode')
  bool get followerMode => throw _privateConstructorUsedError;

  /// The length of time, in minutes, that the followers must have followed
  /// the broadcaster to participate in the chat room. See [followerMode].
  ///
  /// Is `null` if [followerMode] is `false`.
  @JsonKey(name: 'follower_mode_duration')
  int? get followerModeDuration => throw _privateConstructorUsedError;

  /// The moderator’s ID. The response includes this field only if the request
  /// specifies a User access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @JsonKey(name: 'moderator_id')
  String? get moderatorId => throw _privateConstructorUsedError;

  /// A Boolean value that determines whether the broadcaster adds a short
  /// delay before chat messages appear in the chat room. This gives chat
  /// moderators and bots a chance to remove them before viewers can see the
  /// message.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [nonModeratorChatDelayDuration] for the length of the delay.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @JsonKey(name: 'non_moderator_chat_delay')
  bool get nonModeratorChatDelay => throw _privateConstructorUsedError;

  /// The amount of time, in seconds, that messages are delayed from appearing
  /// in chat. See [nonModeratorChatDelay].
  ///
  /// Is `null` if [nonModeratorChatDelay] is `false`.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @JsonKey(name: 'non_moderator_chat_delay_duration')
  int? get nonModeratorChatDelayDuration => throw _privateConstructorUsedError;

  /// A Boolean value that determines whether the broadcaster limits how often
  /// users in the chat room are allowed to send messages.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [slowModeWaitTime] for the delay.
  @JsonKey(name: 'slow_mode')
  bool get slowMode => throw _privateConstructorUsedError;

  /// The amount of time, in seconds, that users need to wait between sending
  /// messages. See [slowMode].
  ///
  /// Is `null` if [slowMode] is `false`.
  @JsonKey(name: 'slow_mode_wait_time')
  int? get slowModeWaitTime => throw _privateConstructorUsedError;

  /// A Boolean value that determines whether only users that subscribe to the
  /// broadcaster’s channel can talk in the chat room.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to subscribers
  /// only; otherwise, `false`.
  @JsonKey(name: 'subscriber_mode')
  bool get subscriberMode => throw _privateConstructorUsedError;

  /// A Boolean value that determines whether the broadcaster requires users
  /// to post only unique messages in the chat room.
  ///
  /// Is `true`, if the broadcaster requires unique messages only; otherwise,
  /// `false`.
  @JsonKey(name: 'unique_chat_mode')
  bool get uniqueChatMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchChatSettingsCopyWith<TwitchChatSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchChatSettingsCopyWith<$Res> {
  factory $TwitchChatSettingsCopyWith(
          TwitchChatSettings value, $Res Function(TwitchChatSettings) then) =
      _$TwitchChatSettingsCopyWithImpl<$Res, TwitchChatSettings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'emote_mode') bool emoteMode,
      @JsonKey(name: 'follower_mode') bool followerMode,
      @JsonKey(name: 'follower_mode_duration') int? followerModeDuration,
      @JsonKey(name: 'moderator_id') String? moderatorId,
      @JsonKey(name: 'non_moderator_chat_delay') bool nonModeratorChatDelay,
      @JsonKey(name: 'non_moderator_chat_delay_duration')
      int? nonModeratorChatDelayDuration,
      @JsonKey(name: 'slow_mode') bool slowMode,
      @JsonKey(name: 'slow_mode_wait_time') int? slowModeWaitTime,
      @JsonKey(name: 'subscriber_mode') bool subscriberMode,
      @JsonKey(name: 'unique_chat_mode') bool uniqueChatMode});
}

/// @nodoc
class _$TwitchChatSettingsCopyWithImpl<$Res, $Val extends TwitchChatSettings>
    implements $TwitchChatSettingsCopyWith<$Res> {
  _$TwitchChatSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? emoteMode = null,
    Object? followerMode = null,
    Object? followerModeDuration = freezed,
    Object? moderatorId = freezed,
    Object? nonModeratorChatDelay = null,
    Object? nonModeratorChatDelayDuration = freezed,
    Object? slowMode = null,
    Object? slowModeWaitTime = freezed,
    Object? subscriberMode = null,
    Object? uniqueChatMode = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      emoteMode: null == emoteMode
          ? _value.emoteMode
          : emoteMode // ignore: cast_nullable_to_non_nullable
              as bool,
      followerMode: null == followerMode
          ? _value.followerMode
          : followerMode // ignore: cast_nullable_to_non_nullable
              as bool,
      followerModeDuration: freezed == followerModeDuration
          ? _value.followerModeDuration
          : followerModeDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      nonModeratorChatDelay: null == nonModeratorChatDelay
          ? _value.nonModeratorChatDelay
          : nonModeratorChatDelay // ignore: cast_nullable_to_non_nullable
              as bool,
      nonModeratorChatDelayDuration: freezed == nonModeratorChatDelayDuration
          ? _value.nonModeratorChatDelayDuration
          : nonModeratorChatDelayDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      slowMode: null == slowMode
          ? _value.slowMode
          : slowMode // ignore: cast_nullable_to_non_nullable
              as bool,
      slowModeWaitTime: freezed == slowModeWaitTime
          ? _value.slowModeWaitTime
          : slowModeWaitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberMode: null == subscriberMode
          ? _value.subscriberMode
          : subscriberMode // ignore: cast_nullable_to_non_nullable
              as bool,
      uniqueChatMode: null == uniqueChatMode
          ? _value.uniqueChatMode
          : uniqueChatMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchChatSettingsImplCopyWith<$Res>
    implements $TwitchChatSettingsCopyWith<$Res> {
  factory _$$TwitchChatSettingsImplCopyWith(_$TwitchChatSettingsImpl value,
          $Res Function(_$TwitchChatSettingsImpl) then) =
      __$$TwitchChatSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'emote_mode') bool emoteMode,
      @JsonKey(name: 'follower_mode') bool followerMode,
      @JsonKey(name: 'follower_mode_duration') int? followerModeDuration,
      @JsonKey(name: 'moderator_id') String? moderatorId,
      @JsonKey(name: 'non_moderator_chat_delay') bool nonModeratorChatDelay,
      @JsonKey(name: 'non_moderator_chat_delay_duration')
      int? nonModeratorChatDelayDuration,
      @JsonKey(name: 'slow_mode') bool slowMode,
      @JsonKey(name: 'slow_mode_wait_time') int? slowModeWaitTime,
      @JsonKey(name: 'subscriber_mode') bool subscriberMode,
      @JsonKey(name: 'unique_chat_mode') bool uniqueChatMode});
}

/// @nodoc
class __$$TwitchChatSettingsImplCopyWithImpl<$Res>
    extends _$TwitchChatSettingsCopyWithImpl<$Res, _$TwitchChatSettingsImpl>
    implements _$$TwitchChatSettingsImplCopyWith<$Res> {
  __$$TwitchChatSettingsImplCopyWithImpl(_$TwitchChatSettingsImpl _value,
      $Res Function(_$TwitchChatSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? emoteMode = null,
    Object? followerMode = null,
    Object? followerModeDuration = freezed,
    Object? moderatorId = freezed,
    Object? nonModeratorChatDelay = null,
    Object? nonModeratorChatDelayDuration = freezed,
    Object? slowMode = null,
    Object? slowModeWaitTime = freezed,
    Object? subscriberMode = null,
    Object? uniqueChatMode = null,
  }) {
    return _then(_$TwitchChatSettingsImpl(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      emoteMode: null == emoteMode
          ? _value.emoteMode
          : emoteMode // ignore: cast_nullable_to_non_nullable
              as bool,
      followerMode: null == followerMode
          ? _value.followerMode
          : followerMode // ignore: cast_nullable_to_non_nullable
              as bool,
      followerModeDuration: freezed == followerModeDuration
          ? _value.followerModeDuration
          : followerModeDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      nonModeratorChatDelay: null == nonModeratorChatDelay
          ? _value.nonModeratorChatDelay
          : nonModeratorChatDelay // ignore: cast_nullable_to_non_nullable
              as bool,
      nonModeratorChatDelayDuration: freezed == nonModeratorChatDelayDuration
          ? _value.nonModeratorChatDelayDuration
          : nonModeratorChatDelayDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      slowMode: null == slowMode
          ? _value.slowMode
          : slowMode // ignore: cast_nullable_to_non_nullable
              as bool,
      slowModeWaitTime: freezed == slowModeWaitTime
          ? _value.slowModeWaitTime
          : slowModeWaitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberMode: null == subscriberMode
          ? _value.subscriberMode
          : subscriberMode // ignore: cast_nullable_to_non_nullable
              as bool,
      uniqueChatMode: null == uniqueChatMode
          ? _value.uniqueChatMode
          : uniqueChatMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchChatSettingsImpl implements _TwitchChatSettings {
  const _$TwitchChatSettingsImpl(
      {@JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      @JsonKey(name: 'emote_mode') required this.emoteMode,
      @JsonKey(name: 'follower_mode') required this.followerMode,
      @JsonKey(name: 'follower_mode_duration')
      required this.followerModeDuration,
      @JsonKey(name: 'moderator_id') required this.moderatorId,
      @JsonKey(name: 'non_moderator_chat_delay')
      required this.nonModeratorChatDelay,
      @JsonKey(name: 'non_moderator_chat_delay_duration')
      required this.nonModeratorChatDelayDuration,
      @JsonKey(name: 'slow_mode') required this.slowMode,
      @JsonKey(name: 'slow_mode_wait_time') required this.slowModeWaitTime,
      @JsonKey(name: 'subscriber_mode') required this.subscriberMode,
      @JsonKey(name: 'unique_chat_mode') required this.uniqueChatMode});

  factory _$TwitchChatSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchChatSettingsImplFromJson(json);

  /// The ID of the broadcaster specified in the request.
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;

  /// A Boolean value that determines whether chat messages must contain only
  /// emotes. Is `true`, if only messages that are 100% emotes are allowed;
  /// otherwise, `false`.
  @override
  @JsonKey(name: 'emote_mode')
  final bool emoteMode;

  /// A Boolean value that determines whether the broadcaster restricts the
  /// chat room to followers only, based on how long they’ve followed.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to followers only;
  /// otherwise, `false`.
  ///
  /// See [followerModeDuration] for how long the followers must have followed
  /// the broadcaster to participate in the chat room.
  @override
  @JsonKey(name: 'follower_mode')
  final bool followerMode;

  /// The length of time, in minutes, that the followers must have followed
  /// the broadcaster to participate in the chat room. See [followerMode].
  ///
  /// Is `null` if [followerMode] is `false`.
  @override
  @JsonKey(name: 'follower_mode_duration')
  final int? followerModeDuration;

  /// The moderator’s ID. The response includes this field only if the request
  /// specifies a User access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @override
  @JsonKey(name: 'moderator_id')
  final String? moderatorId;

  /// A Boolean value that determines whether the broadcaster adds a short
  /// delay before chat messages appear in the chat room. This gives chat
  /// moderators and bots a chance to remove them before viewers can see the
  /// message.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [nonModeratorChatDelayDuration] for the length of the delay.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @override
  @JsonKey(name: 'non_moderator_chat_delay')
  final bool nonModeratorChatDelay;

  /// The amount of time, in seconds, that messages are delayed from appearing
  /// in chat. See [nonModeratorChatDelay].
  ///
  /// Is `null` if [nonModeratorChatDelay] is `false`.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @override
  @JsonKey(name: 'non_moderator_chat_delay_duration')
  final int? nonModeratorChatDelayDuration;

  /// A Boolean value that determines whether the broadcaster limits how often
  /// users in the chat room are allowed to send messages.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [slowModeWaitTime] for the delay.
  @override
  @JsonKey(name: 'slow_mode')
  final bool slowMode;

  /// The amount of time, in seconds, that users need to wait between sending
  /// messages. See [slowMode].
  ///
  /// Is `null` if [slowMode] is `false`.
  @override
  @JsonKey(name: 'slow_mode_wait_time')
  final int? slowModeWaitTime;

  /// A Boolean value that determines whether only users that subscribe to the
  /// broadcaster’s channel can talk in the chat room.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to subscribers
  /// only; otherwise, `false`.
  @override
  @JsonKey(name: 'subscriber_mode')
  final bool subscriberMode;

  /// A Boolean value that determines whether the broadcaster requires users
  /// to post only unique messages in the chat room.
  ///
  /// Is `true`, if the broadcaster requires unique messages only; otherwise,
  /// `false`.
  @override
  @JsonKey(name: 'unique_chat_mode')
  final bool uniqueChatMode;

  @override
  String toString() {
    return 'TwitchChatSettings(broadcasterId: $broadcasterId, emoteMode: $emoteMode, followerMode: $followerMode, followerModeDuration: $followerModeDuration, moderatorId: $moderatorId, nonModeratorChatDelay: $nonModeratorChatDelay, nonModeratorChatDelayDuration: $nonModeratorChatDelayDuration, slowMode: $slowMode, slowModeWaitTime: $slowModeWaitTime, subscriberMode: $subscriberMode, uniqueChatMode: $uniqueChatMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchChatSettingsImpl &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.emoteMode, emoteMode) ||
                other.emoteMode == emoteMode) &&
            (identical(other.followerMode, followerMode) ||
                other.followerMode == followerMode) &&
            (identical(other.followerModeDuration, followerModeDuration) ||
                other.followerModeDuration == followerModeDuration) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.nonModeratorChatDelay, nonModeratorChatDelay) ||
                other.nonModeratorChatDelay == nonModeratorChatDelay) &&
            (identical(other.nonModeratorChatDelayDuration,
                    nonModeratorChatDelayDuration) ||
                other.nonModeratorChatDelayDuration ==
                    nonModeratorChatDelayDuration) &&
            (identical(other.slowMode, slowMode) ||
                other.slowMode == slowMode) &&
            (identical(other.slowModeWaitTime, slowModeWaitTime) ||
                other.slowModeWaitTime == slowModeWaitTime) &&
            (identical(other.subscriberMode, subscriberMode) ||
                other.subscriberMode == subscriberMode) &&
            (identical(other.uniqueChatMode, uniqueChatMode) ||
                other.uniqueChatMode == uniqueChatMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      emoteMode,
      followerMode,
      followerModeDuration,
      moderatorId,
      nonModeratorChatDelay,
      nonModeratorChatDelayDuration,
      slowMode,
      slowModeWaitTime,
      subscriberMode,
      uniqueChatMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchChatSettingsImplCopyWith<_$TwitchChatSettingsImpl> get copyWith =>
      __$$TwitchChatSettingsImplCopyWithImpl<_$TwitchChatSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchChatSettingsImplToJson(
      this,
    );
  }
}

abstract class _TwitchChatSettings implements TwitchChatSettings {
  const factory _TwitchChatSettings(
      {@JsonKey(name: 'broadcaster_id') required final String broadcasterId,
      @JsonKey(name: 'emote_mode') required final bool emoteMode,
      @JsonKey(name: 'follower_mode') required final bool followerMode,
      @JsonKey(name: 'follower_mode_duration')
      required final int? followerModeDuration,
      @JsonKey(name: 'moderator_id') required final String? moderatorId,
      @JsonKey(name: 'non_moderator_chat_delay')
      required final bool nonModeratorChatDelay,
      @JsonKey(name: 'non_moderator_chat_delay_duration')
      required final int? nonModeratorChatDelayDuration,
      @JsonKey(name: 'slow_mode') required final bool slowMode,
      @JsonKey(name: 'slow_mode_wait_time')
      required final int? slowModeWaitTime,
      @JsonKey(name: 'subscriber_mode') required final bool subscriberMode,
      @JsonKey(name: 'unique_chat_mode')
      required final bool uniqueChatMode}) = _$TwitchChatSettingsImpl;

  factory _TwitchChatSettings.fromJson(Map<String, dynamic> json) =
      _$TwitchChatSettingsImpl.fromJson;

  @override

  /// The ID of the broadcaster specified in the request.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override

  /// A Boolean value that determines whether chat messages must contain only
  /// emotes. Is `true`, if only messages that are 100% emotes are allowed;
  /// otherwise, `false`.
  @JsonKey(name: 'emote_mode')
  bool get emoteMode;
  @override

  /// A Boolean value that determines whether the broadcaster restricts the
  /// chat room to followers only, based on how long they’ve followed.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to followers only;
  /// otherwise, `false`.
  ///
  /// See [followerModeDuration] for how long the followers must have followed
  /// the broadcaster to participate in the chat room.
  @JsonKey(name: 'follower_mode')
  bool get followerMode;
  @override

  /// The length of time, in minutes, that the followers must have followed
  /// the broadcaster to participate in the chat room. See [followerMode].
  ///
  /// Is `null` if [followerMode] is `false`.
  @JsonKey(name: 'follower_mode_duration')
  int? get followerModeDuration;
  @override

  /// The moderator’s ID. The response includes this field only if the request
  /// specifies a User access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @JsonKey(name: 'moderator_id')
  String? get moderatorId;
  @override

  /// A Boolean value that determines whether the broadcaster adds a short
  /// delay before chat messages appear in the chat room. This gives chat
  /// moderators and bots a chance to remove them before viewers can see the
  /// message.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [nonModeratorChatDelayDuration] for the length of the delay.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @JsonKey(name: 'non_moderator_chat_delay')
  bool get nonModeratorChatDelay;
  @override

  /// The amount of time, in seconds, that messages are delayed from appearing
  /// in chat. See [nonModeratorChatDelay].
  ///
  /// Is `null` if [nonModeratorChatDelay] is `false`.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  @JsonKey(name: 'non_moderator_chat_delay_duration')
  int? get nonModeratorChatDelayDuration;
  @override

  /// A Boolean value that determines whether the broadcaster limits how often
  /// users in the chat room are allowed to send messages.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [slowModeWaitTime] for the delay.
  @JsonKey(name: 'slow_mode')
  bool get slowMode;
  @override

  /// The amount of time, in seconds, that users need to wait between sending
  /// messages. See [slowMode].
  ///
  /// Is `null` if [slowMode] is `false`.
  @JsonKey(name: 'slow_mode_wait_time')
  int? get slowModeWaitTime;
  @override

  /// A Boolean value that determines whether only users that subscribe to the
  /// broadcaster’s channel can talk in the chat room.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to subscribers
  /// only; otherwise, `false`.
  @JsonKey(name: 'subscriber_mode')
  bool get subscriberMode;
  @override

  /// A Boolean value that determines whether the broadcaster requires users
  /// to post only unique messages in the chat room.
  ///
  /// Is `true`, if the broadcaster requires unique messages only; otherwise,
  /// `false`.
  @JsonKey(name: 'unique_chat_mode')
  bool get uniqueChatMode;
  @override
  @JsonKey(ignore: true)
  _$$TwitchChatSettingsImplCopyWith<_$TwitchChatSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
