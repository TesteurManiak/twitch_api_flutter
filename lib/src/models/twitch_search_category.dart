class TwitchSearchCategory {
  /// Template URL for the game’s box art.
  final String boxArtUrl;

  /// Game/category name.
  final String name;

  /// Game/category ID.
  final String id;

  TwitchSearchCategory({
    required this.boxArtUrl,
    required this.name,
    required this.id,
  });

  factory TwitchSearchCategory.fromJson(Map<String, dynamic> json) =>
      TwitchSearchCategory(
        boxArtUrl: json['box_art_url'] as String,
        name: json['name'] as String,
        id: json['id'] as String,
      );
}
