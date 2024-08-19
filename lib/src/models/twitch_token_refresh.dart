import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_token_refresh.freezed.dart';
part 'twitch_token_refresh.g.dart';

@freezed
class TwitchTokenRefresh with _$TwitchTokenRefresh {
  const factory TwitchTokenRefresh({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
    required List<String> scope,
  }) = _TwitchTokenRefresh;

  factory TwitchTokenRefresh.fromJson(Map<String, dynamic> json) => _$TwitchTokenRefreshFromJson(json);
}
