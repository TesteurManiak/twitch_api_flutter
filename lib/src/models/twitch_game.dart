const int _defaultImgHeight = 380;
const int _defaultImgWidth = 285;

class TwitchGame {
  final String _boxArtUrl;

  /// Game ID.
  final String id;

  /// Game name.
  final String name;

  TwitchGame({
    required String boxArtUrl,
    required this.id,
    required this.name,
  }) : _boxArtUrl = boxArtUrl;

  /// Template URL for the game’s box art.
  ///
  /// By default size is `285x380`.
  String getBoxArtUrl({
    int height = _defaultImgHeight,
    int width = _defaultImgWidth,
  }) =>
      _boxArtUrl
          .replaceFirst('{width}', '$width')
          .replaceFirst('{height}', '$height');

  factory TwitchGame.fromJson(Map<String, dynamic> json) => TwitchGame(
        boxArtUrl: json['box_art_url'].toString(),
        id: json['id'] as String,
        name: json['name'] as String,
      );
}
