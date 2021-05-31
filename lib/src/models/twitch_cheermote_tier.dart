class _CheermoteImageSet {
  final Map<String, String> animated;
  final Map<String, String> staticImgs;

  _CheermoteImageSet({required this.animated, required this.staticImgs});

  factory _CheermoteImageSet.fromJson(Map<String, dynamic> json) =>
      _CheermoteImageSet(
        animated: Map<String, String>.from(json['animated'] as Map),
        staticImgs: Map<String, String>.from(json['static'] as Map),
      );
}

class _CheermoteImage {
  final _CheermoteImageSet light;
  final _CheermoteImageSet dark;

  _CheermoteImage({required this.light, required this.dark});

  factory _CheermoteImage.fromJson(Map<String, dynamic> json) =>
      _CheermoteImage(
        light:
            _CheermoteImageSet.fromJson(json['light'] as Map<String, dynamic>),
        dark: _CheermoteImageSet.fromJson(json['dark'] as Map<String, dynamic>),
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
    required this.minBits,
    required this.id,
    required this.color,
    required this.images,
    required this.canCheer,
    required this.showInBitsCard,
  });

  factory TwitchCheermoteTier.fromJson(Map<String, dynamic> json) =>
      TwitchCheermoteTier(
        minBits: json['min_bits'] as int,
        id: json['id'] as String,
        color: json['color'] as String,
        images:
            _CheermoteImage.fromJson(json['images'] as Map<String, dynamic>),
        canCheer: json['can_cheer'] as bool,
        showInBitsCard: json['show_in_bits_card'] as bool,
      );
}
