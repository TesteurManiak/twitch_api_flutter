import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_start_commercial.freezed.dart';
part 'twitch_start_commercial.g.dart';

@freezed
class TwitchStartCommercial with _$TwitchStartCommercial {
  const factory TwitchStartCommercial({
    /// Length of the triggered commercial.
    required int length,

    /// Provides contextual information on why the request failed.
    required String message,

    /// Seconds until the next commercial can be served on this channel.
    @JsonKey(name: 'retry_after') required int retryAfter,
  }) = _TwitchStartCommercial;

  factory TwitchStartCommercial.fromJson(Map<String, dynamic> json) =>
      _$TwitchStartCommercialFromJson(json);
}
