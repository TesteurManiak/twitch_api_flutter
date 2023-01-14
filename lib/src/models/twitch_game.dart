import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_game.freezed.dart';
part 'twitch_game.g.dart';

const int _defaultImgHeight = 380;
const int _defaultImgWidth = 285;

@freezed
class TwitchGame with _$TwitchGame {
  const factory TwitchGame({
    /// Template URL for the game’s box art.
    @JsonKey(name: 'box_art_url') required String boxArtUrl,

    /// Game ID.
    required String id,

    /// Game name.
    required String name,
  }) = _TwitchGame;

  const TwitchGame._();

  /// Return the template URL for the game’s box art with the corresponding
  /// height and width.
  ///
  /// By default size is `285x380`.
  String getBoxArtUrl({
    int height = _defaultImgHeight,
    int width = _defaultImgWidth,
  }) {
    return boxArtUrl
        .replaceFirst('{width}', '$width')
        .replaceFirst('{height}', '$height');
  }

  factory TwitchGame.fromJson(Map<String, dynamic> json) =>
      _$TwitchGameFromJson(json);
}
