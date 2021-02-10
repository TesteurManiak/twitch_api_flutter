const int _defaultImgHeight = 380;
const int _defaultImgWidth = 285;

class TwitchGame {
  final String _boxArtUrl;
  final String id;
  final String name;

  TwitchGame({String boxArtUrl, this.id, this.name})
      : this._boxArtUrl = boxArtUrl;

  String getBoxArtUrl({
    int height = _defaultImgHeight,
    int width = _defaultImgWidth,
  }) =>
      _boxArtUrl
          .replaceFirst('{width}', '$width')
          .replaceFirst('{height}', '$height');

  factory TwitchGame.fromJson(Map<String, dynamic> json) => TwitchGame(
        boxArtUrl: json['box_art_url'].toString(),
        id: json['id'],
        name: json['name'],
      );
}
