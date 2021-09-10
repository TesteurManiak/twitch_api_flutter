import 'package:twitch_api/src/extensions/string_extensions.dart'
    show StringModifier;
import 'package:twitch_api/src/models/twitch_cheermote_tier.dart';
import 'package:twitch_api/src/models/twitch_cheermote_type.dart';

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
    required this.prefix,
    required this.tiers,
    required this.type,
    required this.order,
    required this.lastUpdated,
    required this.isCharitable,
  });

  factory TwitchCheermote.fromJson(Map<String, dynamic> json) =>
      TwitchCheermote(
        prefix: json['prefix'] as String,
        tiers: (json['tiers'] as Iterable)
            .map<TwitchCheermoteTier>(
                (e) => TwitchCheermoteTier.fromJson(e as Map<String, dynamic>))
            .toList(),
        type: json['type'].toString().toCheermoteType(),
        order: json['order'] as int,
        lastUpdated: DateTime.parse(json['last_updated'] as String),
        isCharitable: json['is_charitable'] as bool,
      );
}
