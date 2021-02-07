enum TwitchApiScope {
  analyticsReadExtensions,
  analyticsReadGames,
  bitsRead,
  channelEditCommercial,
}

class TwitchApiScopes {
  static const Map<TwitchApiScope, String> _scopes = {
    TwitchApiScope.analyticsReadExtensions: 'analytics:read:extensions',
    TwitchApiScope.analyticsReadGames: 'analytics:read:games',
    TwitchApiScope.bitsRead: 'bits:read',
    TwitchApiScope.channelEditCommercial: 'channel:edit:commercial',
  };

  static String getScopeString(TwitchApiScope scope) => _scopes[scope];
}
