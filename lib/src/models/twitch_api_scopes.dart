enum TwitchApiScope {
  analyticsReadExtensions,
  analyticsReadGames,
  bitsRead,
  channelEditCommercial,
  channelManageBroadcast,
  channelManageRedemptions,
  channelReadEditors,
  channelReadRedemptions,
  channelReadSubscriptions,
  moderatorReadChatSettings,
  userReadEmail,
}

extension TwitchApiScopeModifier on TwitchApiScope {
  String get string {
    switch (this) {
      case TwitchApiScope.analyticsReadExtensions:
        return 'analytics:read:extensions';
      case TwitchApiScope.analyticsReadGames:
        return 'analytics:read:games';
      case TwitchApiScope.bitsRead:
        return 'bits:read';
      case TwitchApiScope.channelEditCommercial:
        return 'channel:edit:commercial';
      case TwitchApiScope.channelManageBroadcast:
        return 'channel:manage:broadcast';
      case TwitchApiScope.channelManageRedemptions:
        return 'channel:manage:redemptions';
      case TwitchApiScope.channelReadEditors:
        return 'channel:read:editors';
      case TwitchApiScope.channelReadRedemptions:
        return 'channel:read:redemptions';
      case TwitchApiScope.channelReadSubscriptions:
        return 'channel:read:subscriptions';
      case TwitchApiScope.moderatorReadChatSettings:
        return 'moderator:read:chat_settings';
      case TwitchApiScope.userReadEmail:
        return 'user:read:email';
    }
  }
}
