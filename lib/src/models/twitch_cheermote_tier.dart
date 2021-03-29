class _CheermoteImageSet {
  final Map<String, String> animated;
  final Map<String, String> static;

  _CheermoteImageSet({this.animated, this.static});

  factory _CheermoteImageSet.fromJson(Map<String, dynamic> json) =>
      _CheermoteImageSet(
        animated: json['animated'],
        static: json['static'],
      );
}

class _CheermoteImage {
  final _CheermoteImageSet light;
  final _CheermoteImageSet dark;

  _CheermoteImage({this.light, this.dark});

  factory _CheermoteImage.fromJson(Map<String, dynamic> json) =>
      _CheermoteImage(
        light: _CheermoteImageSet.fromJson(json['light']),
        dark: _CheermoteImageSet.fromJson(json['dark']),
      );
}

class TwitchCheermoteTier {
  /// Minimum number of bits needed to be used to hit the given tier of emote.
  final int minBits;

  /// ID of the emote tier. Possible tiers are: 1,100,500,1000,5000, 10k, or
  /// 100k.
  final String id;

  /// Hex code for the color associated with the bits of that tier. Grey,
  /// Purple, Teal, Blue, or Red color to match the base bit type.
  final String color;

  /// Structure containing both animated and static image sets, sorted by light
  /// and dark.
  final _CheermoteImage images;

  /// Indicates whether or not emote information is accessible to users.
  final bool canCheer;

  /// Indicates whether or not we hide the emote from the bits card.
  final bool showInBitsCard;

  TwitchCheermoteTier({
    this.minBits,
    this.id,
    this.color,
    this.images,
    this.canCheer,
    this.showInBitsCard,
  });

  factory TwitchCheermoteTier.fromJson(Map<String, dynamic> json) =>
      TwitchCheermoteTier(
        minBits: json['min_bits'],
        id: json['id'],
        color: json['color'],
        images: _CheermoteImage.fromJson(json['images']),
        canCheer: json['can_cheer'],
        showInBitsCard: json['show_in_bits_card'],
      );
}
