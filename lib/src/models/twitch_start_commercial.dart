class TwitchStartCommercial {
  /// Length of the triggered commercial.
  final int? length;

  /// Provides contextual information on why the request failed.
  final String? message;

  /// Seconds until the next commercial can be served on this channel.
  final int? retryAfter;

  TwitchStartCommercial({this.length, this.message, this.retryAfter});

  factory TwitchStartCommercial.fromJson(Map<String, dynamic> json) =>
      TwitchStartCommercial(
        length: json['length'],
        message: json['message'],
        retryAfter: json['retry_after'],
      );
}
