class TwitchChatSettings {
  /// The ID of the broadcaster specified in the request.
  final String broadcasterId;

  /// A Boolean value that determines whether chat messages must contain only
  /// emotes. Is `true`, if only messages that are 100% emotes are allowed;
  /// otherwise, `false`.
  final bool emoteMode;

  /// A Boolean value that determines whether the broadcaster restricts the chat
  /// room to followers only, based on how long they’ve followed.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to followers only;
  /// otherwise, `false`.
  ///
  /// See [followerModeDuration] for how long the followers must have followed
  /// the broadcaster to participate in the chat room.
  final bool followerMode;

  /// The length of time, in minutes, that the followers must have followed the
  /// broadcaster to participate in the chat room. See [followerMode].
  ///
  /// Is `null` if [followerMode] is `false`.
  final int? followerModeDuration;

  /// The moderator’s ID. The response includes this field only if the request
  /// specifies a User access token that includes the
  /// `TwitchApiScope.moderatorReadChatSettings` scope.
  final String? moderatorId;

  /// A Boolean value that determines whether the broadcaster adds a short delay
  /// before chat messages appear in the chat room. This gives chat moderators
  /// and bots a chance to remove them before viewers can see the message.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [nonModeratorChatDelayDuration] for the length of the delay.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the `TwitchApiScope.moderatorReadChatSettings`
  /// scope.
  final bool nonModeratorChatDelay;

  /// The amount of time, in seconds, that messages are delayed from appearing
  /// in chat. See [nonModeratorChatDelay].
  ///
  /// Is `null` if [nonModeratorChatDelay] is `false`.
  ///
  /// The response includes this field only if the request specifies a User
  /// access token that includes the `TwitchApiScope.moderatorReadChatSettings`
  /// scope.
  final int? nonModeratorChatDelayDuration;

  /// A Boolean value that determines whether the broadcaster limits how often
  /// users in the chat room are allowed to send messages.
  ///
  /// Is `true`, if the broadcaster applies a delay; otherwise, `false`.
  ///
  /// See [slowModeWaitTime] for the delay.
  final bool slowMode;

  /// The amount of time, in seconds, that users need to wait between sending
  /// messages. See [slowMode].
  ///
  /// Is `null` if [slowMode] is `false`.
  final int? slowModeWaitTime;

  /// A Boolean value that determines whether only users that subscribe to the
  /// broadcaster’s channel can talk in the chat room.
  ///
  /// Is `true`, if the broadcaster restricts the chat room to subscribers only;
  /// otherwise, `false`.
  final bool subscriberMode;

  /// A Boolean value that determines whether the broadcaster requires users to
  /// post only unique messages in the chat room.
  ///
  /// Is `true`, if the broadcaster requires unique messages only; otherwise,
  /// `false`.
  final bool uniqueChatMode;

  TwitchChatSettings({
    required this.broadcasterId,
    required this.emoteMode,
    required this.followerMode,
    required this.followerModeDuration,
    required this.moderatorId,
    required this.nonModeratorChatDelay,
    required this.nonModeratorChatDelayDuration,
    required this.slowMode,
    required this.slowModeWaitTime,
    required this.subscriberMode,
    required this.uniqueChatMode,
  });

  factory TwitchChatSettings.fromJson(Map<String, dynamic> json) {
    return TwitchChatSettings(
      broadcasterId: json['broadcaster_id'] as String,
      emoteMode: json['emote_mode'] as bool,
      followerMode: json['follower_mode'] as bool,
      followerModeDuration: json['follower_mode_duration'] as int?,
      moderatorId: json['moderator_id'] as String?,
      nonModeratorChatDelay: json['non_moderator_chat_delay'] as bool,
      nonModeratorChatDelayDuration:
          json['non_moderator_chat_delay_duration'] as int?,
      slowMode: json['slow_mode'] as bool,
      slowModeWaitTime: json['slow_mode_wait_time'] as int?,
      subscriberMode: json['subscriber_mode'] as bool,
      uniqueChatMode: json['unique_chat_mode'] as bool,
    );
  }
}
