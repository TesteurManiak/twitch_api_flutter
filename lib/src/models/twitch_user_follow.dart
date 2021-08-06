class TwitchUserFollow {
  /// Date and time when the [fromId] user followed the [toId] user.
  final DateTime followedAt;

  /// ID of the user following the [toId] user.
  final String fromId;

  /// Login of the user following the [toId] user.
  final String fromLogin;

  /// Display name corresponding to [fromId].
  final String fromName;

  /// ID of the user being followed by the [fromId] user.
  final String toId;

  /// Login of the user being followed by the [fromId] user.
  final String? toLogin;

  /// Display name corresponding to [toId].
  final String toName;

  TwitchUserFollow({
    required this.followedAt,
    required this.fromId,
    required this.fromLogin,
    required this.fromName,
    required this.toId,
    required this.toLogin,
    required this.toName,
  });

  factory TwitchUserFollow.fromJson(Map<String, dynamic> json) =>
      TwitchUserFollow(
        followedAt: DateTime.parse(json['followed_at'] as String),
        fromId: json['from_id'] as String,
        fromLogin: json['from_login'] as String,
        fromName: json['from_name'] as String,
        toId: json['to_id'] as String,
        toLogin: json['to_login'] as String?,
        toName: json['to_name'] as String,
      );
}
