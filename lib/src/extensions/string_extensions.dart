import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';

import '../../twitch_api.dart';

extension StringModifier on String {
  TwitchStreamType toStreamType() {
    switch (this.toLowerCase()) {
      case 'live':
        return TwitchStreamType.live;
      default:
        return TwitchStreamType.error;
    }
  }

  TwitchCheermoteType toCheermoteType() {
    switch (this.toLowerCase()) {
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
}
