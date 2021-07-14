enum TwitchApiScope {
  analyticsReadExtensions,
  analyticsReadGames,
  bitsRead,
  channelEditCommercial,
  channelManageBroadcast,
  channelReadEditors,
  channelReadRedemptions,
  channelReadSubscriptions,
  userReadEmail,
}

class TwitchApiScopes {
  static const _scopes = <TwitchApiScope, String>{
    TwitchApiScope.analyticsReadExtensions: 'analytics:read:extensions',
    TwitchApiScope.analyticsReadGames: 'analytics:read:games',
    TwitchApiScope.bitsRead: 'bits:read',
    TwitchApiScope.channelEditCommercial: 'channel:edit:commercial',
    TwitchApiScope.channelManageBroadcast: 'channel:manage:broadcast',
    TwitchApiScope.channelReadEditors: 'channel:read:editors',
    TwitchApiScope.channelReadRedemptions: 'channel:read:redemptions',
    TwitchApiScope.channelReadSubscriptions: 'channel:read:subscriptions',
    TwitchApiScope.userReadEmail: 'user:read:email',
  };

  static String getScopeString(TwitchApiScope scope) => _scopes[scope]!;
}
