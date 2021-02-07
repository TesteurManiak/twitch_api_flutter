class TwitchExtentsionAnalytic {
  /// Report end date/time.
  final String endedAt;

  /// ID of the extension whose analytics data is being provided.
  final String extensionId;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results. This is returned only if `extensionId`
  /// is not specified in the request.
  final Map<String, dynamic> pagination;

  /// Report start date/time. Note this may differ from (be later than) the
  /// `startedAt` value in the request; the response value is the date when data
  /// for the extension is available.
  final String startedAt;

  /// Type of report.
  final String type;

  /// URL to the downloadable CSV file containing analytics data. Valid for 5
  /// minutes.
  final String url;

  TwitchExtentsionAnalytic({
    this.endedAt,
    this.extensionId,
    this.pagination,
    this.startedAt,
    this.type,
    this.url,
  });

  factory TwitchExtentsionAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchExtentsionAnalytic();
}
