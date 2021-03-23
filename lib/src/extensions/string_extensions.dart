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
}
