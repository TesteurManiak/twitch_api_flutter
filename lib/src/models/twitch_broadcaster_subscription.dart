class TwitchBroadcasterSubscription {
  /// User ID of the broadcaster.
  final String broadcasterId;

  /// Login of the broadcaster.
  final String broadcasterLogin;

  /// Display name of the broadcaster.
  final String broadcasterName;

  /// If the subscription was gifted, this is the user ID of the gifter. Empty
  /// string otherwise.
  final String gifterId;

  /// If the subscription was gifted, this is the login of the gifter. Empty
  /// string otherwise.
  final String gifterLogin;

  /// If the subscription was gifted, this is the display name of the gifter.
  /// Empty string otherwise.
  final String gifterName;

  /// `true` if the subscription is a gift subscription.
  final bool isGift;

  /// Name of the subscription.
  final String planName;

  /// Type of subscription (Tier 1, Tier 2, Tier 3). 1000 = Tier 1, 2000 = Tier
  /// 2, 3000 = Tier 3 subscriptions.
  final String tier;

  /// ID of the subscribed user.
  final String userId;

  /// Display name of the subscribed user.
  final String userName;

  /// Login of the subscribed user.
  final String userLogin;

  TwitchBroadcasterSubscription({
    required this.broadcasterId,
    required this.broadcasterLogin,
    required this.broadcasterName,
    required this.gifterId,
    required this.gifterLogin,
    required this.gifterName,
    required this.isGift,
    required this.planName,
    required this.tier,
    required this.userId,
    required this.userLogin,
    required this.userName,
  });

  factory TwitchBroadcasterSubscription.fromJson(Map<String, dynamic> json) =>
      TwitchBroadcasterSubscription(
        broadcasterId: json['broadcaster_id'] as String,
        broadcasterLogin: json['broadcaster_login'] as String,
        broadcasterName: json['broadcaster_name'] as String,
        gifterId: json['gifter_id'] as String,
        gifterLogin: json['gifter_login'] as String,
        gifterName: json['gifter_name'] as String,
        isGift: json['is_gift'] as bool,
        planName: json['plan_name'] as String,
        tier: json['tier'] as String,
        userId: json['user_id'] as String,
        userName: json['user_name'] as String,
        userLogin: json['user_login'] as String,
      );
}
