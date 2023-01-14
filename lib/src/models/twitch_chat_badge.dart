import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_chat_badge.freezed.dart';
part 'twitch_chat_badge.g.dart';

@freezed
class TwitchChatBadge with _$TwitchChatBadge {
  const factory TwitchChatBadge({
    /// ID for the chat badge set.
    @JsonKey(name: 'set_id') required String setId,
    required List<BadgeVersion> versions,
  }) = _TwitchChatBadge;

  factory TwitchChatBadge.fromJson(Map<String, dynamic> json) =>
      _$TwitchChatBadgeFromJson(json);
}

@freezed
class BadgeVersion with _$BadgeVersion {
  const factory BadgeVersion({
    /// ID of the chat badge version.
    required String id,

    /// Small image URL.
    @JsonKey(name: 'image_url_1x') required String smallImageUrl,

    /// Medium image URL.
    @JsonKey(name: 'image_url_2x') required String mediumImageUrl,

    /// Large image URL.
    @JsonKey(name: 'image_url_4x') required String largeImageUrl,
  }) = _BadgeVersion;

  factory BadgeVersion.fromJson(Map<String, dynamic> json) =>
      _$BadgeVersionFromJson(json);
}
