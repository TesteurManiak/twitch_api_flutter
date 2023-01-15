import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_channel_info.freezed.dart';
part 'twitch_channel_info.g.dart';

@freezed
class TwitchChannelInfo with _$TwitchChannelInfo {
  const factory TwitchChannelInfo({
    /// Twitch User ID of this channel owner
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,

    /// Twitch user display name of this channel owner
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,

    /// Name of the game being played on the channel
    @JsonKey(name: 'game_name') required String gameName,

    /// Current game ID being played on the channel
    @JsonKey(name: 'game_id') required String gameId,

    /// Language of the channel. A language value is either the ISO 639-1
    /// two-letter code for a supported stream language or “other”.
    @JsonKey(name: 'broadcaster_language') required String broadcasterLanguage,

    /// Title of the stream
    required String title,

    /// Stream delay in seconds
    required int delay,
  }) = _TwitchChannelInfo;

  factory TwitchChannelInfo.fromJson(Map<String, dynamic> json) =>
      _$TwitchChannelInfoFromJson(json);
}
