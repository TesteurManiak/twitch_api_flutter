import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_api/src/models/twitch_custom_reward.dart';
import 'package:twitch_api/src/models/twitch_emote_format.dart';
import 'package:twitch_api/src/models/twitch_emote_type.dart';
import 'package:twitch_api/src/models/twitch_theme_mode.dart';

part 'twitch_emotes.freezed.dart';
part 'twitch_emotes.g.dart';

@freezed
class TwitchGlobalEmotes with _$TwitchGlobalEmotes {
  const factory TwitchGlobalEmotes({
    /// {@template twitchEmotes.id}
    /// An ID that identifies the emote.
    /// {@endtemplate}
    required String id,

    /// {@template twitchEmotes.name}
    /// The name of the emote. This is the name that viewers type in the chat
    /// window to get the emote to appear.
    /// {@endtemplate}
    required String name,

    /// {@template twitchEmotes.images}
    /// Contains the image URLs for the emote. These image URLs will always
    /// provide a static (i.e., non-animated) emote image with a light
    /// background.
    /// NOTE: The preference is for you to use the templated URL in the template
    /// field to fetch the image instead of using these URLs.
    /// {@endtemplate}
    required TwitchCustomRewardImage images,

    /// {@template twitchEmotes.format}
    /// The formats that the emote is available in. For example, if the emote is
    /// available only as a static PNG, the array contains only
    /// [TwitchEmoteFormat.static]. But if it’s available as a static PNG and an
    /// animated GIF, the array contains [TwitchEmoteFormat.static] and
    /// [TwitchEmoteFormat.animated].
    /// {@endtemplate}
    required List<TwitchEmoteFormat> format,

    /// {@template twitchEmotes.scale}
    /// The sizes that the emote is available in. For example, if the emote is
    /// available in small and medium sizes, the array contains `1.0` and `2.0`.
    /// {@endtemplate}
    required List<String> scale,

    /// {@template twitchEmotes.themeMode}
    /// The background themes that the emote is available in.
    /// {@endtemplate}
    @JsonKey(name: 'theme_mode') required List<TwitchThemeMode> themeMode,
  }) = _TwitchGlobalEmotes;

  factory TwitchGlobalEmotes.fromJson(Map<String, dynamic> json) =>
      _$TwitchGlobalEmotesFromJson(json);
}

@freezed
class TwitchEmotes with _$TwitchEmotes {
  const factory TwitchEmotes({
    /// {@macro twitchEmotes.id}
    required String id,

    /// {@macro twitchEmotes.name}
    required String name,

    /// {@macro twitchEmotes.images}
    required TwitchCustomRewardImage images,

    /// The subscriber tier at which the emote is unlocked. This field contains
    /// the tier information only if [emoteType] is set to
    /// [TwitchEmoteType.subscriptions], otherwise, it’s an empty string.
    required String tier,

    /// {@template twitchEmotes.emoteType}
    /// The type of emote.
    /// {@endtemplate}
    @JsonKey(name: 'emote_type') required TwitchEmoteType emoteType,

    /// {@template twitchEmotes.emoteSetId}
    /// An ID that identifies the emote set that the emote belongs to.
    /// {@endtemplate}
    @JsonKey(name: 'emote_set_id') required String emoteSetId,

    /// {@macro twitchEmotes.format}
    required List<TwitchEmoteFormat> format,

    /// {@macro twitchEmotes.scale}
    required List<String> scale,

    /// {@macro twitchEmotes.themeMode}
    @JsonKey(name: 'theme_mode') required List<TwitchThemeMode> themeMode,
  }) = _TwitchEmotes;

  factory TwitchEmotes.fromJson(Map<String, dynamic> json) =>
      _$TwitchEmotesFromJson(json);
}

@freezed
class TwitchEmoteSets with _$TwitchEmoteSets {
  const factory TwitchEmoteSets({
    /// {@macro twitchEmotes.id}
    required String id,

    /// {@macro twitchEmotes.name}
    required String name,

    /// {@macro twitchEmotes.images}
    required TwitchCustomRewardImage images,

    /// {@macro twitchEmotes.emoteType}
    @JsonKey(name: 'emote_type') required TwitchEmoteType emoteType,

    /// {@macro twitchEmotes.emoteSetId}
    @JsonKey(name: 'emote_set_id') required String emoteSetId,

    /// The ID of the broadcaster who owns the emote.
    @JsonKey(name: 'owner_id') required String ownerId,

    /// {@macro twitchEmotes.format}
    required List<TwitchEmoteFormat> format,

    /// {@macro twitchEmotes.scale}
    required List<String> scale,

    /// {@macro twitchEmotes.themeMode}
    @JsonKey(name: 'theme_mode') required List<TwitchThemeMode> themeMode,
  }) = _TwitchEmoteSets;

  factory TwitchEmoteSets.fromJson(Map<String, dynamic> json) =>
      _$TwitchEmoteSetsFromJson(json);
}
