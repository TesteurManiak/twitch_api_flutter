import 'package:freezed_annotation/freezed_annotation.dart';

import 'twitch_cheermote_tier.dart';
import 'twitch_cheermote_type.dart';

part 'twitch_cheermote.freezed.dart';
part 'twitch_cheermote.g.dart';

@freezed
class TwitchCheermote with _$TwitchCheermote {
  const factory TwitchCheermote({
    /// The string used to Cheer that precedes the Bits amount.
    required String prefix,

    /// An array of Cheermotes with their metadata.
    required List<TwitchCheermoteTier> tiers,

    /// Shows whether the emote is `globalFirstParty`, `globalThirdParty`,
    /// `channelCustom`, `displayOnly`, or `sponsored`.
    required TwitchCheermoteType type,

    /// Order of the emotes as shown in the bits card, in ascending order.
    required int order,

    /// The data when this Cheermote was last updated.
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,

    /// Indicates whether or not this emote provides a charity contribution match
    /// during charity campaigns.
    @JsonKey(name: 'is_charitable') required bool isCharitable,
  }) = _TwitchCheermote;

  factory TwitchCheermote.fromJson(Map<String, dynamic> json) =>
      _$TwitchCheermoteFromJson(json);
}
