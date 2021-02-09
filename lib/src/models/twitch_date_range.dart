class TwitchDateRange {
  /// Report start date/time. Note this may differ from (be later than) the
  /// `startedAt` value in the request; the response value is the date when data
  /// for the extension is available.
  final String startedAt;

  /// Report end date/time.
  final String endedAt;

  TwitchDateRange({this.endedAt, this.startedAt});

  factory TwitchDateRange.fromJson(Map<String, dynamic> json) =>
      TwitchDateRange(endedAt: json['ended_at'], startedAt: json['started_at']);
}
