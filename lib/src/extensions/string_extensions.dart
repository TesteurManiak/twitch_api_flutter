import '../../twitch_api.dart';
import '../errors/exceptions.dart';

extension StringModifier on String {
  TwitchStreamType toStreamType() {
    switch (toLowerCase()) {
      case 'live':
        return TwitchStreamType.live;
      default:
        return TwitchStreamType.error;
    }
  }

  TwitchExtensionTransactionProductType toTransactionProductType() {
    switch (toUpperCase()) {
      case 'BITS_IN_EXTENSION':
        return TwitchExtensionTransactionProductType.bitsInExtension;
      default:
        throw TwitchApiException(
          'Unknown TwitchExtensionTransactionProductType: $this',
        );
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
