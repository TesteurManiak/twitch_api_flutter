import 'package:twitch_api/src/extensions/string_extensions.dart';

enum TwitchRewardRedemptionStatus { unfulfilled, fulfilled, canceled }

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

  factory TwitchRedemptionRewardInfo.fromJson(Map<String, dynamic> json) =>
      TwitchRedemptionRewardInfo(
        id: json['id'] as String,
        title: json['title'] as String,
        prompt: json['prompt'] as String,
        cost: json['cost'] as int,
      );
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
  final String? userLogin;

  /// The ID of the user that redeemed the reward.
  final String userId;

  /// The display name of the user that redeemed the reward.
  final String userName;

  /// Basic information about the Custom Reward that was redeemed at the time it
  /// was redeemed.
  final TwitchRedemptionRewardInfo reward;

  /// The user input provided. Empty string if not provided.
  final String userInput;

  /// One of UNFULFILLED, FULFILLED or CANCELED.
  final TwitchRewardRedemptionStatus status;

  /// RFC3339 timestamp of when the reward was redeemed.
  final DateTime redeemedAt;

  TwitchCustomRewardRedemption({
    required this.broadcasterId,
    required this.broadcasterLogin,
    required this.broadcasterName,
    required this.id,
    required this.userLogin,
    required this.userId,
    required this.userName,
    required this.reward,
    required this.userInput,
    required this.status,
    required this.redeemedAt,
  });

  factory TwitchCustomRewardRedemption.fromJson(Map<String, dynamic> json) =>
      TwitchCustomRewardRedemption(
        broadcasterId: json["broadcaster_id"] as String,
        broadcasterLogin: json["broadcaster_login"] as String,
        broadcasterName: json["broadcaster_name"] as String,
        id: json["id"] as String,
        userLogin: json["user_login"] as String?,
        userId: json["user_id"] as String,
        userName: json["user_name"] as String,
        reward: TwitchRedemptionRewardInfo.fromJson(
          json["reward"] as Map<String, dynamic>,
        ),
        userInput: json["user_input"] as String,
        status: (json["status"] as String).toRewardRedemptionStatus(),
        redeemedAt: DateTime.parse(json["redeemed_at"] as String),
      );
}
