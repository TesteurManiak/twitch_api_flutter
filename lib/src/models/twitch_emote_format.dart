enum TwitchEmoteFormat { animated, static }

extension TwitchEmoteFormatExtension on String {
  TwitchEmoteFormat toTwitchEmoteFormat() {
    switch (this) {
      case 'animated':
        return TwitchEmoteFormat.animated;
      case 'static':
        return TwitchEmoteFormat.static;
      default:
        throw Exception('Unknown TwitchEmoteFormat: $this');
    }
  }
}
