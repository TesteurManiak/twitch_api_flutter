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
    this.userId,
    this.userLogin,
    this.userName,
    this.rank,
    this.score,
  });

  factory TwitchBitsLeaderboard.fromJson(Map<String, dynamic> json) =>
      TwitchBitsLeaderboard(
        userId: json['user_id'],
        userLogin: json['user_login'],
        userName: json['user_name'],
        rank: json['rank'],
        score: json['score'],
      );
}
