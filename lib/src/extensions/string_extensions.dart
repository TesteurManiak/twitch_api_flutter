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
}
