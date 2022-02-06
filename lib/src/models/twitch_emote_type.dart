enum TwitchEmoteType { bitstier, follower, subscriptions }

extension TwitchEmoteTypeExtension on String {
  TwitchEmoteType toTwitchEmoteType() {
    switch (this) {
      case 'bitstier':
        return TwitchEmoteType.bitstier;
      case 'follower':
        return TwitchEmoteType.follower;
      case 'subscriptions':
        return TwitchEmoteType.subscriptions;
      default:
        throw Exception('Invalid TwitchEmoteType: $this');
    }
  }
}
