import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_token.freezed.dart';

@freezed
class TwitchToken with _$TwitchToken {
  const factory TwitchToken({
    required String token,
    required String scope,
    required String tokenType,
    String? clientId,
    String? login,
    List<String>? scopes,
    String? userId,
    @Default(0) int expiresIn,
  }) = _TwitchToken;
  factory TwitchToken.fromValidation(
    TwitchToken incompleteToken,
    Map<String, dynamic> json,
  ) {
    return incompleteToken.copyWith(
      clientId: json[clientIdEntry] as String,
      login: json[loginEntry] as String,
      scopes: List<String>.from(json[scopesEntry] as Iterable),
      userId: json[userIdEntry] as String,
      expiresIn: json[expiresInEntry] as int,
    );
  }

  factory TwitchToken.fromUrl(String url) {
    final content = url.split('#').last;
    final datas = content.split('&');
    return TwitchToken(
      token: datas.firstWhere((e) => e.startsWith(_accessTokenKey)).substring(_accessTokenKey.length),
      tokenType: datas.firstWhere((e) => e.startsWith(_tokenTypeKey)).substring(_tokenTypeKey.length),
      scope: datas.firstWhere((e) => e.startsWith(_scopeKey)).substring(_scopeKey.length),
    );
  }

  const TwitchToken._();
  static const _accessTokenKey = 'access_token=';
  static const _scopeKey = 'scope=';
  static const _tokenTypeKey = 'token_type=';
  static const clientIdEntry = 'client_id';
  static const loginEntry = 'login';
  static const scopesEntry = 'scopes';
  static const userIdEntry = 'user_id';
  static const expiresInEntry = 'expires_in';

  bool get isValid => expiresIn > 0;
}
