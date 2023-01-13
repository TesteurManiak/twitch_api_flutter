import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_broadcaster_subscription.freezed.dart';
part 'twitch_broadcaster_subscription.g.dart';

@freezed
class TwitchBroadcasterSubscription with _$TwitchBroadcasterSubscription {
  const factory TwitchBroadcasterSubscription({
    /// User ID of the broadcaster.
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,

    /// Login of the broadcaster.
    @JsonKey(name: 'broadcaster_login') required String broadcasterLogin,

    /// Display name of the broadcaster.
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,

    /// If the subscription was gifted, this is the user ID of the gifter. Empty
    /// string otherwise.
    @JsonKey(name: 'gifter_id') required String gifterId,

    /// If the subscription was gifted, this is the login of the gifter. Empty
    /// string otherwise.
    @JsonKey(name: 'gifter_login') required String gifterLogin,

    /// If the subscription was gifted, this is the display name of the gifter.
    /// Empty string otherwise.
    @JsonKey(name: 'gifter_name') required String gifterName,

    /// `true` if the subscription is a gift subscription.
    @JsonKey(name: 'is_gift') required bool isGift,

    /// Name of the subscription.
    @JsonKey(name: 'plan_name') required String planName,

    /// Type of subscription (Tier 1, Tier 2, Tier 3). 1000 = Tier 1, 2000 = Tier
    /// 2, 3000 = Tier 3 subscriptions.
    required String tier,

    /// ID of the subscribed user.
    @JsonKey(name: 'user_id') required String userId,

    /// Display name of the subscribed user.
    @JsonKey(name: 'user_name') required String userName,

    /// Login of the subscribed user.
    @JsonKey(name: 'user_login') required String userLogin,
  }) = _TwitchBroadcasterSubscription;

  factory TwitchBroadcasterSubscription.fromJson(Map<String, dynamic> json) =>
      _$TwitchBroadcasterSubscriptionFromJson(json);
}
