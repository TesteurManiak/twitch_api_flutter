class TwitchSearchCategory {
  /// Template URL for the game’s box art.
  final String boxArtUrl;

  /// Game/category name.
  final String name;

  /// Game/category ID.
  final String id;

  TwitchSearchCategory({this.boxArtUrl, this.name, this.id});

  factory TwitchSearchCategory.fromJson(Map<String, dynamic> json) =>
      TwitchSearchCategory(
        boxArtUrl: json['box_art_url'],
        name: json['name'],
        id: json['id'],
      );
}
