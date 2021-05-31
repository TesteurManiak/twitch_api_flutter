class TwitchTopGame {
  final String? boxArtUrl;
  final String? id;
  final String? name;

  TwitchTopGame({this.boxArtUrl, this.id, this.name});

  factory TwitchTopGame.fromJson(Map<String, dynamic> json) => TwitchTopGame(
        boxArtUrl: json['box_art_url'].toString(),
        id: json['id'],
        name: json['name'],
      );
}
