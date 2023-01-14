import 'package:twitch_api/src/errors/exceptions.dart';
import 'package:twitch_api/twitch_api.dart';

extension StringModifier on String {
  TwitchStreamType toStreamType() {
    switch (toLowerCase()) {
      case 'live':
        return TwitchStreamType.live;
      default:
        return TwitchStreamType.error;
    }
  }

  TwitchRewardRedemptionStatus toRewardRedemptionStatus() {
    switch (toUpperCase()) {
      case 'UNFULFILLED':
        return TwitchRewardRedemptionStatus.unfulfilled;
      case 'FULFILLED':
        return TwitchRewardRedemptionStatus.fulfilled;
      case 'CANCELED':
        return TwitchRewardRedemptionStatus.canceled;
      default:
        throw TwitchApiException('Unknown TwitchRewardRedemptionStatus: $this');
    }
  }
}
