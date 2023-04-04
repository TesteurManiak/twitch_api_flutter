import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_custom_reward.freezed.dart';
part 'twitch_custom_reward.g.dart';

/// Set of custom images.
@freezed
class TwitchCustomRewardImage with _$TwitchCustomRewardImage {
  const factory TwitchCustomRewardImage({
    /// 1x image size
    @JsonKey(name: 'url_1x') required String url1x,

    /// 2x image size
    @JsonKey(name: 'url_2x') required String url2x,

    /// 4x image size
    @JsonKey(name: 'url_4x') required String url4x,
  }) = _TwitchCustomRewardImage;

  factory TwitchCustomRewardImage.fromJson(Map<String, dynamic> json) =>
      _$TwitchCustomRewardImageFromJson(json);
}

@freezed
class TwitchMaxPerStream with _$TwitchMaxPerStream {
  const factory TwitchMaxPerStream({
    @JsonKey(name: 'is_enabled') required bool isEnabled,
    @JsonKey(name: 'max_per_stream') required int maxPerStream,
  }) = _TwitchMaxPerStream;

  factory TwitchMaxPerStream.fromJson(Map<String, dynamic> json) =>
      _$TwitchMaxPerStreamFromJson(json);
}

@freezed
class TwitchMaxPerUserPerStreamSetting with _$TwitchMaxPerUserPerStreamSetting {
  const factory TwitchMaxPerUserPerStreamSetting({
    @JsonKey(name: 'is_enabled') required bool isEnabled,
    @JsonKey(name: 'max_per_user_per_stream') required int maxPerUserPerStream,
  }) = _TwitchMaxPerUserPerStreamSetting;

  factory TwitchMaxPerUserPerStreamSetting.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TwitchMaxPerUserPerStreamSettingFromJson(json);
}

@freezed
class TwitchGlobalCooldownSetting with _$TwitchGlobalCooldownSetting {
  const factory TwitchGlobalCooldownSetting({
    @JsonKey(name: 'is_enabled') required bool isEnabled,
    @JsonKey(name: 'global_cooldown_seconds')
        required int globalCooldownSeconds,
  }) = _TwitchGlobalCooldownSetting;

  factory TwitchGlobalCooldownSetting.fromJson(Map<String, dynamic> json) =>
      _$TwitchGlobalCooldownSettingFromJson(json);
}

@freezed
class TwitchCustomReward with _$TwitchCustomReward {
  const factory TwitchCustomReward({
    /// ID of the channel the reward is for.
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,

    /// Broadcaster’s user login name.
    @JsonKey(name: 'broadcaster_login') required String? broadcasterLogin,

    /// Display name of the channel the reward is for.
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,

    /// ID of the reward.
    required String id,

    /// Set of custom images of 1x, 2x and 4x sizes for the reward can be null if
    /// no images have been uploaded.
    required TwitchCustomRewardImage? image,

    /// Custom background color for the reward. Format: Hex with # prefix.
    /// Example: `#00E5CB`.
    @JsonKey(name: 'background_color') required String backgroundColor,

    /// Is the reward currently enabled, if false the reward won’t show up to
    /// viewers.
    @JsonKey(name: 'is_enabled') required bool isEnabled,

    /// The cost of the reward.
    required int cost,

    /// The title of the reward.
    required String title,

    /// The prompt for the viewer when they are redeeming the reward.
    required String prompt,

    /// Does the user need to enter information when redeeming the reward.
    @JsonKey(name: 'is_user_input_required') required bool isUserInputRequired,

    /// Whether a maximum per stream is enabled and what the maximum is.
    @JsonKey(name: 'max_per_stream_setting')
        required TwitchMaxPerStream maxPerStreamSetting,

    /// Whether a maximum per user per stream is enabled and what the maximum is.
    @JsonKey(name: 'max_per_user_per_stream_setting')
        required TwitchMaxPerUserPerStreamSetting maxPerUserPerStreamSetting,

    /// Whether a cooldown is enabled and what the cooldown is.
    @JsonKey(name: 'global_cooldown_setting')
        required TwitchGlobalCooldownSetting globalCooldownSetting,

    /// Is the reward currently paused, if true viewers can’t redeem.
    @JsonKey(name: 'is_paused') required bool isPaused,

    /// Is the reward currently in stock, if false viewers can’t redeem.
    @JsonKey(name: 'is_in_stock') required bool isInStock,

    /// Set of default images of 1x, 2x and 4x sizes for the reward.
    @JsonKey(name: 'default_image')
        required TwitchCustomRewardImage defaultImage,

    /// Should redemptions be set to FULFILLED status immediately when redeemed
    /// and skip the request queue instead of the normal UNFULFILLED status.
    @JsonKey(name: 'should_redemptions_skip_request_queue')
        required bool shouldRedemptionsSkipRequestQueue,

    /// The number of redemptions redeemed during the current live stream. Counts
    /// against the max_per_stream_setting limit. Null if the broadcasters stream
    /// isn’t live or max_per_stream_setting isn’t enabled.
    @JsonKey(name: 'redemptions_redeemed_current_stream')
        required int? redemptionsRedeemedCurrentStream,

    /// Timestamp of the cooldown expiration. Null if the reward isn’t on
    /// cooldown.
    @JsonKey(name: 'cooldown_expires_at') required String? cooldownExpiresAt,
  }) = _TwitchCustomReward;

  factory TwitchCustomReward.fromJson(Map<String, dynamic> json) =>
      _$TwitchCustomRewardFromJson(json);
}
