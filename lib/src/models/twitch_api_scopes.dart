enum TwitchApiScope {
  viewingActivityRead('viewing_activity_read'),
  analyticsReadExtensions('analytics:read:extensions'),
  analyticsReadGames('analytics:read:games'),
  bitsRead('bits:read'),
  channelEditCommercial('channel:edit:commercial'),
  channelManageBroadcast('channel:manage:broadcast'),
  channelManageRedemptions('channel:manage:redemptions'),
  channelReadEditors('channel:read:editors'),
  channelReadRedemptions('channel:read:redemptions'),
  channelReadSubscriptions('channel:read:subscriptions'),
  moderatorReadChatSettings('moderator:read:chat_settings'),
  userReadEmail('user:read:email'),
  clipsEdit('clips:edit');

  const TwitchApiScope(this.string);

  final String string;
}
