import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_cheermote_tier.freezed.dart';
part 'twitch_cheermote_tier.g.dart';

@freezed
class CheermoteImageSet with _$CheermoteImageSet {
  const factory CheermoteImageSet({
    required Map<String, String> animated,
    @JsonKey(name: 'static') required Map<String, String> staticImgs,
  }) = _CheermoteImageSet;

  factory CheermoteImageSet.fromJson(Map<String, dynamic> json) =>
      _$CheermoteImageSetFromJson(json);
}

@freezed
class CheermoteImage with _$CheermoteImage {
  const factory CheermoteImage({
    required CheermoteImageSet light,
    required CheermoteImageSet dark,
  }) = _CheermoteImage;

  factory CheermoteImage.fromJson(Map<String, dynamic> json) =>
      _$CheermoteImageFromJson(json);
}

@freezed
class TwitchCheermoteTier with _$TwitchCheermoteTier {
  const factory TwitchCheermoteTier({
    /// Minimum number of bits needed to be used to hit the given tier of emote.
    @JsonKey(name: 'min_bits') required int minBits,

    /// ID of the emote tier. Possible tiers are: 1,100,500,1000,5000, 10k, or
    /// 100k.
    required String id,

    /// Hex code for the color associated with the bits of that tier. Grey,
    /// Purple, Teal, Blue, or Red color to match the base bit type.
    required String color,

    /// Structure containing both animated and static image sets, sorted by light
    /// and dark.
    required CheermoteImage images,

    /// Indicates whether or not emote information is accessible to users.
    @JsonKey(name: 'can_cheer') required bool canCheer,

    /// Indicates whether or not we hide the emote from the bits card.
    @JsonKey(name: 'show_in_bits_card') required bool showInBitsCard,
  }) = _TwitchCheermoteTier;

  factory TwitchCheermoteTier.fromJson(Map<String, dynamic> json) =>
      _$TwitchCheermoteTierFromJson(json);
}
