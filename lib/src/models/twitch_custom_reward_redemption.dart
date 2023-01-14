import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_custom_reward_redemption.freezed.dart';
part 'twitch_custom_reward_redemption.g.dart';

enum TwitchRewardRedemptionStatus {
  @JsonValue('UNFULFILLED')
  unfulfilled,
  @JsonValue('FULFILLED')
  fulfilled,
  @JsonValue('CANCELED')
  canceled,
}

enum TwitchRedemptionSort {
  oldest,
  newest,
}

@freezed
class TwitchRedemptionRewardInfo with _$TwitchRedemptionRewardInfo {
  const factory TwitchRedemptionRewardInfo({
    required String id,
    required String title,
    required String prompt,
    required int cost,
  }) = _TwitchRedemptionRewardInfo;

  factory TwitchRedemptionRewardInfo.fromJson(Map<String, dynamic> json) =>
      _$TwitchRedemptionRewardInfoFromJson(json);
}

@freezed
class TwitchCustomRewardRedemption with _$TwitchCustomRewardRedemption {
  const factory TwitchCustomRewardRedemption({
    /// The id of the broadcaster that the reward belongs to.
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,

    /// Broadcaster’s user login name.
    @JsonKey(name: 'broadcaster_login') required String broadcasterLogin,

    /// The display name of the broadcaster that the reward belongs to.
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,

    /// The ID of the redemption.
    required String id,

    /// The login of the user who redeemed the reward.
    @JsonKey(name: 'user_login') required String? userLogin,

    /// The ID of the user that redeemed the reward.
    @JsonKey(name: 'user_id') required String userId,

    /// The display name of the user that redeemed the reward.
    @JsonKey(name: 'user_name') required String userName,

    /// Basic information about the Custom Reward that was redeemed at the time it
    /// was redeemed.
    required TwitchRedemptionRewardInfo reward,

    /// The user input provided. Empty string if not provided.
    @JsonKey(name: 'user_input') required String userInput,

    /// One of UNFULFILLED, FULFILLED or CANCELED.
    required TwitchRewardRedemptionStatus status,

    /// RFC3339 timestamp of when the reward was redeemed.
    @JsonKey(name: 'redeemed_at') required DateTime redeemedAt,
  }) = _TwitchCustomRewardRedemption;

  factory TwitchCustomRewardRedemption.fromJson(Map<String, dynamic> json) =>
      _$TwitchCustomRewardRedemptionFromJson(json);
}
