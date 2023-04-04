import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_game.freezed.dart';
part 'twitch_game.g.dart';

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

  factory TwitchGame.fromJson(Map<String, dynamic> json) =>
      _$TwitchGameFromJson(json);

  const TwitchGame._();

  /// Return the template URL for the game’s box art with the corresponding
  /// height and width.
  ///
  /// By default size is `285x380`.
  String getBoxArtUrl({
    int height = 380,
    int width = 285,
  }) {
    return boxArtUrl
        .replaceFirst('{width}', '$width')
        .replaceFirst('{height}', '$height');
  }
}
