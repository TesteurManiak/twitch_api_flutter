import 'package:twitch_api/src/models/twitch_custom_reward_redemption.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_time_period.dart';

extension TwitchTimePeriodModifier on TwitchTimePeriod {
  String get string => toString().split('.').last;
}

extension TwitchExtensionTransactionProductTypeModifier
    on TwitchExtensionTransactionProductType {
  String get string => toString().split('.').last;
}

extension TwitchRewardRedemptionStatusModifier on TwitchRewardRedemptionStatus {
  String get string => toString().split('.').last.toUpperCase();
}

extension TwitchRedemptionSortModifier on TwitchRedemptionSort {
  String get string => toString().split('.').last.toUpperCase();
}
