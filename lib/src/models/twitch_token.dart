class TwitchToken {
  final String token;
  final String scope;
  final String tokenType;
  final String clientId;
  final String login;
  final List<String> scopes;
  final String userId;
  final int expiresIn;

  static const _accessTokenKey = 'access_token=';
  static const _scopeKey = 'scope=';
  static const _tokenTypeKey = 'token_type=';
  static const clientIdEntry = 'client_id';
  static const loginEntry = 'login';
  static const scopesEntry = 'scopes';
  static const userIdEntry = 'user_id';
  static const expiresInEntry = 'expires_in';

  TwitchToken({
    this.token,
    this.scope,
    this.tokenType,
    this.clientId,
    this.login,
    this.scopes,
    this.userId,
    this.expiresIn,
  });

  bool get isValid => expiresIn != null && expiresIn > 0;

  factory TwitchToken.fromUrl(String url) {
    final content = url.split('#').last;
    final datas = content.split('&');
    return TwitchToken(
      token: datas
          .firstWhere((e) => e.startsWith(_accessTokenKey))
          .substring(_accessTokenKey.length),
      tokenType: datas
          .firstWhere((e) => e.startsWith(_tokenTypeKey))
          .substring(_tokenTypeKey.length),
      scope: datas
          .firstWhere((e) => e.startsWith(_scopeKey))
          .substring(_scopeKey.length),
    );
  }

  factory TwitchToken.fromValidation(
          TwitchToken incompleteToken, Map<String, dynamic> json) =>
      incompleteToken.copyWith(
        clientId: json[clientIdEntry],
        login: json[loginEntry],
        scopes: List<String>.from(json[scopesEntry]),
        userId: json[userIdEntry],
        expiresIn: json[expiresInEntry],
      );

  TwitchToken copyWith({
    String token,
    String scope,
    String tokenType,
    String clientId,
    String login,
    List<String> scopes,
    String userId,
    int expiresIn,
  }) =>
      TwitchToken(
        token: token ?? this.token,
        scope: scope ?? this.scope,
        tokenType: tokenType ?? this.tokenType,
        clientId: clientId ?? this.clientId,
        login: login ?? this.login,
        scopes: scopes ?? this.scopes,
        userId: userId ?? this.userId,
        expiresIn: expiresIn ?? this.expiresIn,
      );
}
