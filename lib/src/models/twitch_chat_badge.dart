class TwitchChatBadge {
  /// ID for the chat badge set.
  final String setId;

  /// Contains chat badge objects for the set.
  final List<BadgeVersion> versions;

  TwitchChatBadge({required this.setId, required this.versions});

  factory TwitchChatBadge.fromJson(Map<String, dynamic> json) {
    return TwitchChatBadge(
      setId: json['set_id'] as String,
      versions: (json['versions'] as Iterable)
          .cast<Map<String, dynamic>>()
          .map<BadgeVersion>(BadgeVersion.fromJson)
          .toList(),
    );
  }
}

class BadgeVersion {
  /// ID of the chat badge version.
  final String id;

  /// Small image URL.
  final String smallImageUrl;

  /// Medium image URL.
  final String mediumImageUrl;

  /// Large image URL.
  final String largeImageUrl;

  BadgeVersion({
    required this.id,
    required this.smallImageUrl,
    required this.mediumImageUrl,
    required this.largeImageUrl,
  });

  factory BadgeVersion.fromJson(Map<String, dynamic> json) {
    return BadgeVersion(
      id: json['id'] as String,
      smallImageUrl: json['image_url_1x'] as String,
      mediumImageUrl: json['image_url_2x'] as String,
      largeImageUrl: json['image_url_4x'] as String,
    );
  }
}
