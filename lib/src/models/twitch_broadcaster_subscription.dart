class TwitchBroadcasterSubscription {
  /// User ID of the broadcaster.
  final String? broadcasterId;

  /// Login of the broadcaster.
  final String? broadcasterLogin;

  /// Display name of the broadcaster.
  final String? broadcasterName;

  /// If the subscription was gifted, this is the user ID of the gifter. Empty
  /// string otherwise.
  final String? gifterId;

  /// If the subscription was gifted, this is the login of the gifter. Empty
  /// string otherwise.
  final String? gifterLogin;

  /// If the subscription was gifted, this is the display name of the gifter.
  /// Empty string otherwise.
  final String? gifterName;

  /// `true` if the subscription is a gift subscription.
  final bool? isGift;

  /// Name of the subscription.
  final String? planName;

  /// Type of subscription (Tier 1, Tier 2, Tier 3). 1000 = Tier 1, 2000 = Tier
  /// 2, 3000 = Tier 3 subscriptions.
  final String? tier;

  /// ID of the subscribed user.
  final String? userId;

  /// Display name of the subscribed user.
  final String? userName;

  /// Login of the subscribed user.
  final String? userLogin;

  TwitchBroadcasterSubscription({
    this.broadcasterId,
    this.broadcasterLogin,
    this.broadcasterName,
    this.gifterId,
    this.gifterLogin,
    this.gifterName,
    this.isGift,
    this.planName,
    this.tier,
    this.userId,
    this.userLogin,
    this.userName,
  });

  factory TwitchBroadcasterSubscription.fromJson(Map<String, dynamic> json) =>
      TwitchBroadcasterSubscription(
        broadcasterId: json['broadcaster_id'],
        broadcasterLogin: json['broadcaster_login'],
        broadcasterName: json['broadcaster_name'],
        gifterId: json['gifter_id'],
        gifterLogin: json['gifter_login'],
        gifterName: json['gifter_name'],
        isGift: json['is_gift'],
        planName: json['plan_name'],
        tier: json['tier'],
        userId: json['user_id'],
        userName: json['user_name'],
      );
}
