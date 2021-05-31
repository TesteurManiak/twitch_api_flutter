class TwitchUser {
  final String? broadcasterType;
  final String? description;
  final String? displayName;
  final String? email;
  final String? id;
  final String? login;
  final String? offlineImageUrl;
  final String? profileImageUrl;
  final String? type;
  final int? viewCount;
  final String? createdAt;

  TwitchUser({
    this.broadcasterType,
    this.createdAt,
    this.description,
    this.displayName,
    this.email,
    this.id,
    this.login,
    this.offlineImageUrl,
    this.profileImageUrl,
    this.type,
    this.viewCount,
  });

  factory TwitchUser.fromJson(Map<String, dynamic> json) => TwitchUser(
        id: json['id'],
        login: json['login'],
        displayName: json['display_name'],
        type: json['type'],
        broadcasterType: json['broadcaster_type'],
        description: json['description'],
        profileImageUrl: json['profile_image_url'],
        offlineImageUrl: json['offline_image_url'],
        viewCount: json['view_count'],
        email: json['email'],
        createdAt: json['created_at'],
      );
}
