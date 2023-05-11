import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_bits_leaderboard.freezed.dart';
part 'twitch_bits_leaderboard.g.dart';

@freezed
class TwitchBitsLeaderboard with _$TwitchBitsLeaderboard {
  const factory TwitchBitsLeaderboard({
    /// ID of the user (viewer) in the leaderboard entry.
    @JsonKey(name: 'user_id') required String userId,

    /// User login name.
    @JsonKey(name: 'user_login') required String userLogin,

    /// Display name corresponding to `userId`.
    @JsonKey(name: 'user_name') required String userName,

    /// Leaderboard rank of the user.
    required int rank,

    /// Leaderboard score (number of Bits) of the user.
    required int score,
  }) = _TwitchBitsLeaderboard;

  factory TwitchBitsLeaderboard.fromJson(Map<String, dynamic> json) =>
      _$TwitchBitsLeaderboardFromJson(json);
}
