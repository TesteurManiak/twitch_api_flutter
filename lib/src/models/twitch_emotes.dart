import 'twitch_custom_reward.dart';
import 'twitch_emote_format.dart';
import 'twitch_emote_type.dart';
import 'twitch_theme_mode.dart';

class TwitchGlobalEmotes {
  /// An ID that identifies the emote.
  final String id;

  /// The name of the emote. This is the name that viewers type in the chat
  /// window to get the emote to appear.
  final String name;

  /// Contains the image URLs for the emote. These image URLs will always
  /// provide a static (i.e., non-animated) emote image with a light background.
  /// NOTE: The preference is for you to use the templated URL in the template
  /// field to fetch the image instead of using these URLs.
  final TwitchCustomRewardImage images;

  /// The formats that the emote is available in. For example, if the emote is
  /// available only as a static PNG, the array contains only
  /// [TwitchEmoteFormat.static]. But if it’s available as a static PNG and an
  /// animated GIF, the array contains [TwitchEmoteFormat.static] and
  /// [TwitchEmoteFormat.animated].
  final List<TwitchEmoteFormat> format;

  /// The sizes that the emote is available in. For example, if the emote is
  /// available in small and medium sizes, the array contains `1.0` and `2.0`.
  final List<String> scale;

  /// The background themes that the emote is available in.
  final List<TwitchThemeMode> themeMode;

  TwitchGlobalEmotes({
    required this.id,
    required this.name,
    required this.images,
    required this.format,
    required this.scale,
    required this.themeMode,
  });

  factory TwitchGlobalEmotes.fromJson(Map<String, dynamic> json) {
    return TwitchGlobalEmotes(
      id: json['id'] as String,
      name: json['name'] as String,
      images: TwitchCustomRewardImage.fromJson(
        json['images'] as Map<String, dynamic>,
      ),
      format: (json['format'] as Iterable)
          .cast<String>()
          .map<TwitchEmoteFormat>((e) => e.toTwitchEmoteFormat())
          .toList(),
      scale: (json['scale'] as Iterable).cast<String>().toList(),
      themeMode: (json['theme_mode'] as Iterable)
          .cast<String>()
          .map<TwitchThemeMode>((e) => e.toTwitchThemeMode())
          .toList(),
    );
  }
}

class TwitchEmotes extends TwitchGlobalEmotes {
  /// The subscriber tier at which the emote is unlocked. This field contains
  /// the tier information only if [emoteType] is set to
  /// [TwitchEmoteType.subscriptions], otherwise, it’s an empty string.
  final String tier;

  /// {@template twitch_emote_type}
  /// The type of emote.
  /// {@endtemplate}
  final TwitchEmoteType emoteType;

  /// {@template twitch_emote_set_id}
  /// An ID that identifies the emote set that the emote belongs to.
  /// {@endtemplate}
  final String emoteSetId;

  TwitchEmotes({
    required String id,
    required String name,
    required TwitchCustomRewardImage images,
    required this.tier,
    required this.emoteType,
    required this.emoteSetId,
    required List<TwitchEmoteFormat> format,
    required List<String> scale,
    required List<TwitchThemeMode> themeMode,
  }) : super(
          id: id,
          name: name,
          images: images,
          format: format,
          scale: scale,
          themeMode: themeMode,
        );

  factory TwitchEmotes.fromJson(Map<String, dynamic> json) {
    return TwitchEmotes(
      id: json['id'] as String,
      name: json['name'] as String,
      images: TwitchCustomRewardImage.fromJson(
        json['images'] as Map<String, dynamic>,
      ),
      tier: json['tier'] as String,
      emoteType: (json['emote_type'] as String).toTwitchEmoteType(),
      emoteSetId: json['emote_set_id'] as String,
      format: (json['format'] as Iterable)
          .cast<String>()
          .map<TwitchEmoteFormat>((e) => e.toTwitchEmoteFormat())
          .toList(),
      scale: (json['scale'] as Iterable).cast<String>().toList(),
      themeMode: (json['theme_mode'] as Iterable)
          .cast<String>()
          .map<TwitchThemeMode>((e) => e.toTwitchThemeMode())
          .toList(),
    );
  }
}

class TwitchEmoteSets extends TwitchGlobalEmotes {
  /// {@macro twitch_emote_type}
  final TwitchEmoteType emoteType;

  /// {@macro twitch_emote_set_id}
  final String emoteSetId;

  /// The ID of the broadcaster who owns the emote.
  final String ownerId;

  TwitchEmoteSets({
    required String id,
    required String name,
    required TwitchCustomRewardImage images,
    required this.emoteType,
    required this.emoteSetId,
    required this.ownerId,
    required List<TwitchEmoteFormat> format,
    required List<String> scale,
    required List<TwitchThemeMode> themeMode,
  }) : super(
          id: id,
          name: name,
          images: images,
          format: format,
          scale: scale,
          themeMode: themeMode,
        );

  factory TwitchEmoteSets.fromJson(Map<String, dynamic> json) {
    return TwitchEmoteSets(
      id: json['id'] as String,
      name: json['name'] as String,
      images: TwitchCustomRewardImage.fromJson(
        json['images'] as Map<String, dynamic>,
      ),
      emoteType: (json['emote_type'] as String).toTwitchEmoteType(),
      emoteSetId: json['emote_set_id'] as String,
      ownerId: json['owner_id'] as String,
      format: (json['format'] as Iterable)
          .cast<String>()
          .map<TwitchEmoteFormat>((e) => e.toTwitchEmoteFormat())
          .toList(),
      scale: (json['scale'] as Iterable).cast<String>().toList(),
      themeMode: (json['theme_mode'] as Iterable)
          .cast<String>()
          .map<TwitchThemeMode>((e) => e.toTwitchThemeMode())
          .toList(),
    );
  }
}
