import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';

import '../../twitch_api.dart';

extension StringModifier on String {
  TwitchStreamType toStreamType() {
    switch (toLowerCase()) {
      case 'live':
        return TwitchStreamType.live;
      default:
        return TwitchStreamType.error;
    }
  }

  TwitchCheermoteType toCheermoteType() {
    switch (toLowerCase()) {
      case 'global_first_party':
        return TwitchCheermoteType.globalFirstParty;
      case 'global_third_party':
        return TwitchCheermoteType.globalThirdParty;
      case 'channel_custom':
        return TwitchCheermoteType.channelCustom;
      case 'display_only':
        return TwitchCheermoteType.displayOnly;
      case 'sponsored':
        return TwitchCheermoteType.sponsored;
      default:
        throw TwitchApiException('Unknown TwitchCheermoteType: $this');
    }
  }

  TwitchExtensionTransactionProductType toTransactionProductType() {
    switch (toUpperCase()) {
      case 'BITS_IN_EXTENSION':
        return TwitchExtensionTransactionProductType.bitsInExtension;
      default:
        throw TwitchApiException(
            'Unknown TwitchExtensionTransactionProductType: $this');
    }
  }
}
