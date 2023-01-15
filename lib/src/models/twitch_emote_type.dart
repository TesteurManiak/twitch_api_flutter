import 'package:freezed_annotation/freezed_annotation.dart';

enum TwitchEmoteType {
  @JsonValue('bitstier')
  bitstier,
  @JsonValue('follower')
  follower,
  @JsonValue('subscriptions')
  subscriptions,
}
