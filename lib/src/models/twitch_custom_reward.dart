/// Set of custom images.
class TwitchCustomRewardImage {
  /// 1x image size
  final String url1x;

  /// 2x image size
  final String url2x;

  /// 4x image size
  final String url4x;

  TwitchCustomRewardImage({
    required this.url1x,
    required this.url2x,
    required this.url4x,
  });

  factory TwitchCustomRewardImage.fromJson(Map<String, dynamic> json) =>
      TwitchCustomRewardImage(
        url1x: json['url_1x'] as String,
        url2x: json['url_2x'] as String,
        url4x: json['url_4x'] as String,
      );
}

class TwitchMaxPerStream {
  final bool isEnabled;
  final int maxPerStream;

  TwitchMaxPerStream({required this.isEnabled, required this.maxPerStream});

  factory TwitchMaxPerStream.fromJson(Map<String, dynamic> json) =>
      TwitchMaxPerStream(
        isEnabled: json['is_enabled'] as bool,
        maxPerStream: json['max_per_stream'] as int,
      );
}

class TwitchMaxPerUserPerStreamSetting {
  final bool isEnabled;
  final int maxPerUserPerStream;

  TwitchMaxPerUserPerStreamSetting({
    required this.isEnabled,
    required this.maxPerUserPerStream,
  });

  factory TwitchMaxPerUserPerStreamSetting.fromJson(
          Map<String, dynamic> json) =>
      TwitchMaxPerUserPerStreamSetting(
        isEnabled: json['is_enabled'] as bool,
        maxPerUserPerStream: json['max_per_user_per_stream'] as int,
      );
}

class TwitchGlobalCooldownSetting {
  final bool isEnabled;
  final int globalCooldownSeconds;

  TwitchGlobalCooldownSetting({
    required this.isEnabled,
    required this.globalCooldownSeconds,
  });

  factory TwitchGlobalCooldownSetting.fromJson(Map<String, dynamic> json) =>
      TwitchGlobalCooldownSetting(
        isEnabled: json['is_enabled'] as bool,
        globalCooldownSeconds: json['global_cooldown_seconds'] as int,
      );
}

class TwitchCustomReward {
  /// ID of the channel the reward is for.
  final String broadcasterName;

  /// Broadcaster’s user login name.
  final String? broadcasterLogin;

  /// Display name of the channel the reward is for.
  final String broadcasterId;

  /// ID of the reward.
  final String id;

  /// Set of custom images of 1x, 2x and 4x sizes for the reward can be null if
  /// no images have been uploaded.
  final TwitchCustomRewardImage? image;

  /// Custom background color for the reward. Format: Hex with # prefix.
  /// Example: `#00E5CB`.
  final String backgroundColor;

  /// Is the reward currently enabled, if false the reward won’t show up to
  /// viewers.
  final bool isEnabled;

  /// The cost of the reward.
  final int cost;

  /// The title of the reward.
  final String title;

  /// The prompt for the viewer when they are redeeming the reward.
  final String prompt;

  /// Does the user need to enter information when redeeming the reward.
  final bool isUserInputRequired;

  /// Whether a maximum per stream is enabled and what the maximum is.
  final TwitchMaxPerStream maxPerStreamSetting;

  /// Whether a maximum per user per stream is enabled and what the maximum is.
  final TwitchMaxPerUserPerStreamSetting maxPerUserPerStreamSetting;

  /// Whether a cooldown is enabled and what the cooldown is.
  final TwitchGlobalCooldownSetting globalCooldownSetting;

  /// Is the reward currently paused, if true viewers can’t redeem.
  final bool isPaused;

  /// Is the reward currently in stock, if false viewers can’t redeem.
  final bool isInStock;

  /// Set of default images of 1x, 2x and 4x sizes for the reward.
  final TwitchCustomRewardImage defaultImage;

  /// Should redemptions be set to FULFILLED status immediately when redeemed
  /// and skip the request queue instead of the normal UNFULFILLED status.
  final bool shouldRedemptionsSkipRequestQueue;

  /// The number of redemptions redeemed during the current live stream. Counts
  /// against the max_per_stream_setting limit. Null if the broadcasters stream
  /// isn’t live or max_per_stream_setting isn’t enabled.
  final int? redemptionsRedeemedCurrentStream;

  /// Timestamp of the cooldown expiration. Null if the reward isn’t on
  /// cooldown.
  final String? cooldownExpiresAt;

  TwitchCustomReward({
    required this.broadcasterName,
    required this.broadcasterLogin,
    required this.broadcasterId,
    required this.id,
    required this.image,
    required this.backgroundColor,
    required this.isEnabled,
    required this.cost,
    required this.title,
    required this.prompt,
    required this.isUserInputRequired,
    required this.maxPerStreamSetting,
    required this.maxPerUserPerStreamSetting,
    required this.globalCooldownSetting,
    required this.isPaused,
    required this.isInStock,
    required this.defaultImage,
    required this.shouldRedemptionsSkipRequestQueue,
    required this.redemptionsRedeemedCurrentStream,
    required this.cooldownExpiresAt,
  });

  factory TwitchCustomReward.fromJson(Map<String, dynamic> json) =>
      TwitchCustomReward(
        broadcasterName: json['broadcaster_name'] as String,
        broadcasterLogin: json['broadcaster_login'] as String?,
        broadcasterId: json['broadcaster_id'] as String,
        id: json['id'] as String,
        image: json['image'] != null
            ? TwitchCustomRewardImage.fromJson(
                json['image'] as Map<String, dynamic>)
            : null,
        backgroundColor: json['background_color'] as String,
        isEnabled: json['is_enabled'] as bool,
        cost: json['cost'] as int,
        title: json['title'] as String,
        prompt: json['prompt'] as String,
        isUserInputRequired: json['is_user_input_required'] as bool,
        maxPerStreamSetting: TwitchMaxPerStream.fromJson(
            json['max_per_stream_setting'] as Map<String, dynamic>),
        maxPerUserPerStreamSetting: TwitchMaxPerUserPerStreamSetting.fromJson(
            json['max_per_user_per_stream_setting'] as Map<String, dynamic>),
        globalCooldownSetting: TwitchGlobalCooldownSetting.fromJson(
            json['global_cooldown_setting'] as Map<String, dynamic>),
        isPaused: json['is_paused'] as bool,
        isInStock: json['is_in_stock'] as bool,
        defaultImage: TwitchCustomRewardImage.fromJson(
            json['default_image'] as Map<String, dynamic>),
        shouldRedemptionsSkipRequestQueue:
            json['should_redemptions_skip_request_queue'] as bool,
        redemptionsRedeemedCurrentStream:
            json['redemptions_redeemed_current_stream'] as int?,
        cooldownExpiresAt: json['cooldown_expires_at'] as String?,
      );
}
