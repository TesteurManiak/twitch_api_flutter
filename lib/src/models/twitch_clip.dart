import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_clip.freezed.dart';
part 'twitch_clip.g.dart';

@freezed
class TwitchClip with _$TwitchClip {
  const factory TwitchClip({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'embed_url') required String embedUrl,
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,
    @JsonKey(name: 'creator_id') required String creatorUd,
    @JsonKey(name: 'creator_name') required String creatorName,
    @JsonKey(name: 'video_id') required String videoUd,
    @JsonKey(name: 'game_id') required String gameUd,
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'view_count') required String viewCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,
    @JsonKey(name: 'duration') required double duration,
    @JsonKey(name: 'vod_offset') required String vodOffset,
    @JsonKey(name: 'is_featured') required bool isFeatured,
  }) = _TwitchClip;

  factory TwitchClip.fromJson(Map<String, dynamic> json) => _$TwitchClipFromJson(json);
}
