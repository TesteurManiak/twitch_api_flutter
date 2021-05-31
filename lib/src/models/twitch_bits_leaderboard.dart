class TwitchBitsLeaderboard {
  /// ID of the user (viewer) in the leaderboard entry.
  final String userId;

  /// User login name.
  final String userLogin;

  /// Display name corresponding to `userId`.
  final String userName;

  /// Leaderboard rank of the user.
  final int rank;

  /// Leaderboard score (number of Bits) of the user.
  final int score;

  TwitchBitsLeaderboard({
    required this.userId,
    required this.userLogin,
    required this.userName,
    required this.rank,
    required this.score,
  });

  factory TwitchBitsLeaderboard.fromJson(Map<String, dynamic> json) =>
      TwitchBitsLeaderboard(
        userId: json['user_id'] as String,
        userLogin: json['user_login'] as String,
        userName: json['user_name'] as String,
        rank: json['rank'] as int,
        score: json['score'] as int,
      );
}
