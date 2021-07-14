enum TwitchRewardRedemptionStatus { unfulfilled, fulfilled, cancelled }

enum TwitchRedemptionSort { oldest, newest }

class TwitchRedemptionRewardInfo {
  final String id;
  final String title;
  final String prompt;
  final int cost;

  TwitchRedemptionRewardInfo({
    required this.id,
    required this.title,
    required this.prompt,
    required this.cost,
  });
}

class TwitchCustomRewardRedemption {
  /// The id of the broadcaster that the reward belongs to.
  final String broadcasterId;

  /// Broadcaster’s user login name.
  final String broadcasterLogin;

  /// The display name of the broadcaster that the reward belongs to.
  final String broadcasterName;

  /// The ID of the redemption.
  final String id;

  /// The login of the user who redeemed the reward.
  final String userLogin;

  /// The ID of the user that redeemed the reward.
  final String userId;

  /// The display name of the user that redeemed the reward.
  final String userName;

  /// Basic information about the Custom Reward that was redeemed at the time it
  /// was redeemed.
  final TwitchRedemptionRewardInfo reward;

  /// The user input provided. Empty string if not provided.
  final String input;

  /// One of UNFULFILLED, FULFILLED or CANCELED.
  final TwitchRewardRedemptionStatus status;

  /// RFC3339 timestamp of when the reward was redeemed.
  final DateTime timestamp;

  TwitchCustomRewardRedemption({
    required this.broadcasterId,
    required this.broadcasterLogin,
    required this.broadcasterName,
    required this.id,
    required this.userLogin,
    required this.userId,
    required this.userName,
    required this.reward,
    required this.input,
    required this.status,
    required this.timestamp,
  });
}
