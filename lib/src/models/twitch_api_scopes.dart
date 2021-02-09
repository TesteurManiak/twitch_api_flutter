enum TwitchApiScope {
  analyticsReadExtensions,
  analyticsReadGames,
  bitsRead,
  channelEditCommercial,
  userReadEmail,
}

class TwitchApiScopes {
  static const Map<TwitchApiScope, String> _scopes = {
    TwitchApiScope.analyticsReadExtensions: 'analytics:read:extensions',
    TwitchApiScope.analyticsReadGames: 'analytics:read:games',
    TwitchApiScope.bitsRead: 'bits:read',
    TwitchApiScope.channelEditCommercial: 'channel:edit:commercial',
    TwitchApiScope.userReadEmail: 'user:read:email',
  };

  static String getScopeString(TwitchApiScope scope) => _scopes[scope];
}
