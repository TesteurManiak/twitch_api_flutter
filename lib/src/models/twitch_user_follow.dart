class TwitchUserFollow {
  final String followedAt;
  final String fromId;
  final String fromLogin;
  final String fromName;
  final String toId;
  final String toLogin;
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
