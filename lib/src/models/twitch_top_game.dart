class TwitchTopGame {
  final String boxArtUrl;
  final String id;
  final String name;

  TwitchTopGame({
    required this.boxArtUrl,
    required this.id,
    required this.name,
  });

  factory TwitchTopGame.fromJson(Map<String, dynamic> json) => TwitchTopGame(
        boxArtUrl: json['box_art_url'].toString(),
        id: json['id'] as String,
        name: json['name'] as String,
      );
}
