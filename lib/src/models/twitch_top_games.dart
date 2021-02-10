import 'package:twitch_api/src/models/twitch_top_game.dart';

class TwitchTopGames {
  final List<TwitchTopGame> data;
  final Map<String, dynamic> pagination;

  TwitchTopGames({this.data, this.pagination});

  factory TwitchTopGames.fromJson(Map<String, dynamic> json) => TwitchTopGames(
        data: (json['data'] as Iterable)
            .map((e) => TwitchTopGame.fromJson(e))
            .toList(),
        pagination: json['pagination'],
      );
}
