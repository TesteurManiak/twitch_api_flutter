enum _TwitchApiScope {
  analyticsReadExtensions,
  analyticsReadGames,
  viewingActivityRead,
}

class TwitchApiScopes {
  static const Map<_TwitchApiScope, String> _scopes = {
    _TwitchApiScope.analyticsReadExtensions: 'analytics:read:extensions',
    _TwitchApiScope.analyticsReadGames: 'analytics:read:games',
    _TwitchApiScope.viewingActivityRead: 'viewing_activity_read',
  };

  static get analyticsReadExtensions =>
      _scopes[_TwitchApiScope.analyticsReadExtensions];
  static get analyticsReadGames => _scopes[_TwitchApiScope.analyticsReadGames];
}
