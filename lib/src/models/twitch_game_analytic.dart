class TwitchGameAnalytic {
  final String endedAt;
  final String gameId;
  final Map<String, dynamic> pagination;
  final String startedAt;
  final String type;
  final String url;

  TwitchGameAnalytic({
    this.endedAt,
    this.gameId,
    this.pagination,
    this.startedAt,
    this.type,
    this.url,
  });

  factory TwitchGameAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchGameAnalytic(
        endedAt: json['ended_at'],
        gameId: json['game_id'],
        pagination: json['pagination'],
        startedAt: json['started_at'],
        type: json['type'],
        url: json['URL'],
      );
}
