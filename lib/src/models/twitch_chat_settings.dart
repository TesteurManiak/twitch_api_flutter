import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_chat_settings.freezed.dart';
part 'twitch_chat_settings.g.dart';

@freezed
class TwitchChatSettings with _$TwitchChatSettings {
  const factory TwitchChatSettings({
    /// The ID of the broadcaster specified in the request.
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,

    /// A Boolean value that determines whether chat messages must contain only
    /// emotes. Is `true`, if only messages that are 100% emotes are allowed;
    /// otherwise, `false`.
    @JsonKey(name: 'emote_mode') required bool emoteMode,

    /// A Boolean value that determines whether the broadcaster restricts the
    /// chat room to followers only, based on how long they’ve followed.
    ///
    /// Is `true`, if the broadcaster restricts the chat room to followers only;
    /// otherwise, `false`.
    ///
    /// See [followerModeDuration] for how long the followers must have followed
    /// the broadcaster to participate in the chat room.
    @JsonKey(name: 'follower_mode') required bool followerMode,

    /// The length of time, in minutes, that the followers must have followed
    /// the broadcaster to participate in the chat room. See [followerMode].
    ///
    /// Is `null` if [followerMode] is `false`.
    @JsonKey(name: 'follower_mode_duration') required int? followerModeDuration,

    /// The moderator’s ID. The response includes this field only if the request
    /// specifies a User access token that includes the
    /// `TwitchApiScope.moderatorReadChatSettings` scope.
    @JsonKey(name: 'moderator_id') required String? moderatorId,

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
        required bool nonModeratorChatDelay,

    /// The amount of time, in seconds, that messages are delayed from appearing
    /// in chat. See [nonModeratorChatDelay].
    ///
    /// Is `null` if [nonModeratorChatDelay] is `false`.
    ///
    /// The response includes this field only if the request specifies a User
    /// access token that includes the
    /// `TwitchApiScope.moderatorReadChatSettings` scope.
    @JsonKey(name: 'non_moderator_chat_delay_duration')
        required int? nonModeratorChatDelayDuration,

    /// A Boolean value that determines whether the broadcaster limits how often
    /// users in the chat room are allowed to send messages.
    ///
    /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
    ///
    /// See [slowModeWaitTime] for the delay.
    @JsonKey(name: 'slow_mode') required bool slowMode,

    /// The amount of time, in seconds, that users need to wait between sending
    /// messages. See [slowMode].
    ///
    /// Is `null` if [slowMode] is `false`.
    @JsonKey(name: 'slow_mode_wait_time') required int? slowModeWaitTime,

    /// A Boolean value that determines whether only users that subscribe to the
    /// broadcaster’s channel can talk in the chat room.
    ///
    /// Is `true`, if the broadcaster restricts the chat room to subscribers
    /// only; otherwise, `false`.
    @JsonKey(name: 'subscriber_mode') required bool subscriberMode,

    /// A Boolean value that determines whether the broadcaster requires users
    /// to post only unique messages in the chat room.
    ///
    /// Is `true`, if the broadcaster requires unique messages only; otherwise,
    /// `false`.
    @JsonKey(name: 'unique_chat_mode') required bool uniqueChatMode,
  }) = _TwitchChatSettings;

  factory TwitchChatSettings.fromJson(Map<String, dynamic> json) =>
      _$TwitchChatSettingsFromJson(json);
}
