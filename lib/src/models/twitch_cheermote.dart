import 'package:twitch_api/src/models/twitch_cheermote_tier.dart';
import 'package:twitch_api/src/models/twitch_cheermote_type.dart';
import 'package:twitch_api/src/extensions/string_extensions.dart'
    show StringModifier;

class TwitchCheermote {
  /// The string used to Cheer that precedes the Bits amount.
  final String prefix;

  /// An array of Cheermotes with their metadata.
  final List<TwitchCheermoteTier> tiers;

  /// Shows whether the emote is `globalFirstParty`, `globalThirdParty`,
  /// `channelCustom`, `displayOnly`, or `sponsored`.
  final TwitchCheermoteType type;

  /// Order of the emotes as shown in the bits card, in ascending order.
  final int order;

  /// The data when this Cheermote was last updated.
  final DateTime lastUpdated;

  /// Indicates whether or not this emote provides a charity contribution match
  /// during charity campaigns.
  final bool isCharitable;

  TwitchCheermote({
    this.prefix,
    this.tiers,
    this.type,
    this.order,
    this.lastUpdated,
    this.isCharitable,
  });

  factory TwitchCheermote.fromJson(Map<String, dynamic> json) =>
      TwitchCheermote(
        prefix: json['prefix'],
        tiers: (json['tiers'] as Iterable)
            .map<TwitchCheermoteTier>((e) => TwitchCheermoteTier.fromJson(e))
            .toList(),
        type: json['type'].toString().toCheermoteType(),
        order: json['order'],
        lastUpdated: DateTime.parse(json['last_updated']),
        isCharitable: json['is_charitable'],
      );
}
