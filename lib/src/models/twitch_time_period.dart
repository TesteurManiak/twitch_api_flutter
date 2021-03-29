/// Time period over which data is aggregated (PST time zone).
enum TwitchTimePeriod {
  /// 00:00:00 on the day specified in `startedAt`,
  /// through 00:00:00 on the following day.
  day,

  /// 00:00:00 on Monday of the week specified in `startedAt`, through 00:00:00
  /// on the following Monday.
  week,

  /// 00:00:00 on the first day of the month specified in `startedAt`, through
  /// 00:00:00 on the first day of the following month.
  month,

  /// 00:00:00 on the first day of the year specified in `startedAt`, through
  /// 00:00:00 on the first day of the following year.
  year,

  /// The lifetime of the broadcaster's channel. If this is specified (or used
  /// by default), `startedAt` is ignored.
  all,
}
