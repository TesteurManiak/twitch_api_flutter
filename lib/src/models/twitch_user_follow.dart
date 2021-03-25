class TwitchUserFollow {
  /// Date and time when the [fromId] user followed the [toId] user.
  final String followedAt;

  /// ID of the user following the [toId] user.
  final String fromId;

  /// Login of the user following the [toId] user.
  final String fromLogin;

  /// Display name corresponding to [fromId].
  final String fromName;

  /// ID of the user being followed by the [fromId] user.
  final String toId;

  /// Login of the user being followed by the [fromId] user.
  final String toLogin;

  /// Display name corresponding to [toId].
  final String toName;

  TwitchUserFollow({
    this.followedAt,
    this.fromId,
    this.fromLogin,
    this.fromName,
    this.toId,
    this.toLogin,
    this.toName,
  });

  factory TwitchUserFollow.fromJson(Map<String, dynamic> json) =>
      TwitchUserFollow(
        followedAt: json['followed_at'],
        fromId: json['from_id'],
        fromLogin: json['from_login'],
        fromName: json['from_name'],
        toId: json['to_id'],
        toLogin: json['to_login'],
        toName: json['to_name'],
      );
}
