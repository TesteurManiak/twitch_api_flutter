import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_user_follow.freezed.dart';
part 'twitch_user_follow.g.dart';

@freezed
class TwitchUserFollow with _$TwitchUserFollow {
  const factory TwitchUserFollow({
    /// Date and time when the [fromId] user followed the [toId] user.
    @JsonKey(name: 'followed_at') required DateTime followedAt,

    /// ID of the user following the [toId] user.
    @JsonKey(name: 'from_id') required String fromId,

    /// Login of the user following the [toId] user.
    @JsonKey(name: 'from_login') required String fromLogin,

    /// Display name corresponding to [fromId].
    @JsonKey(name: 'from_name') required String fromName,

    /// ID of the user being followed by the [fromId] user.
    @JsonKey(name: 'to_id') required String toId,

    /// Login of the user being followed by the [fromId] user.
    @JsonKey(name: 'to_login') required String? toLogin,

    /// Display name corresponding to [toId].
    @JsonKey(name: 'to_name') required String toName,
  }) = _TwitchUserFollow;

  factory TwitchUserFollow.fromJson(Map<String, dynamic> json) =>
      _$TwitchUserFollowFromJson(json);
}
