class TwitchUser {
  final String broadcasterType;
  final String description;
  final String displayName;
  final String email;
  final String id;
  final String login;
  final String offlineImageUrl;
  final String profileImageUrl;
  final String type;
  final int viewCount;
  final String createdAt;

  TwitchUser({
    required this.broadcasterType,
    required this.createdAt,
    required this.description,
    required this.displayName,
    required this.email,
    required this.id,
    required this.login,
    required this.offlineImageUrl,
    required this.profileImageUrl,
    required this.type,
    required this.viewCount,
  });

  factory TwitchUser.fromJson(Map<String, dynamic> json) => TwitchUser(
        id: json['id'] as String,
        login: json['login'] as String,
        displayName: json['display_name'] as String,
        type: json['type'] as String,
        broadcasterType: json['broadcaster_type'] as String,
        description: json['description'] as String,
        profileImageUrl: json['profile_image_url'] as String,
        offlineImageUrl: json['offline_image_url'] as String,
        viewCount: json['view_count'] as int,
        email: json['email'] as String,
        createdAt: json['created_at'] as String,
      );
}
