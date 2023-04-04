import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_user.freezed.dart';
part 'twitch_user.g.dart';

enum TwitchBroadcasterType {
  @JsonValue('partner')
  partner,
  @JsonValue('affiliate')
  affiliate,
  @JsonValue('')
  none,
}

@freezed
class TwitchUser with _$TwitchUser {
  const factory TwitchUser({
    required String id,
    required String login,
    @JsonKey(name: 'display_name') required String displayName,
    required String type,
    @JsonKey(name: 'broadcaster_type')
        required TwitchBroadcasterType broadcasterType,
    required String description,
    @JsonKey(name: 'profile_image_url') required String profileImageUrl,
    @JsonKey(name: 'offline_image_url') required String offlineImageUrl,
    @JsonKey(name: 'view_count') required int viewCount,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _TwitchUser;

  factory TwitchUser.fromJson(Map<String, dynamic> json) =>
      _$TwitchUserFromJson(json);
}
