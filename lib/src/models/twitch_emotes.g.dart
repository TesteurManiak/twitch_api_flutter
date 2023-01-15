// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_emotes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchGlobalEmotes _$$_TwitchGlobalEmotesFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchGlobalEmotes(
      id: json['id'] as String,
      name: json['name'] as String,
      images: TwitchCustomRewardImage.fromJson(
          json['images'] as Map<String, dynamic>),
      format: (json['format'] as List<dynamic>)
          .map((e) => $enumDecode(_$TwitchEmoteFormatEnumMap, e))
          .toList(),
      scale: (json['scale'] as List<dynamic>).map((e) => e as String).toList(),
      themeMode: (json['theme_mode'] as List<dynamic>)
          .map((e) => $enumDecode(_$TwitchThemeModeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_TwitchGlobalEmotesToJson(
        _$_TwitchGlobalEmotes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'format':
          instance.format.map((e) => _$TwitchEmoteFormatEnumMap[e]!).toList(),
      'scale': instance.scale,
      'theme_mode':
          instance.themeMode.map((e) => _$TwitchThemeModeEnumMap[e]!).toList(),
    };

const _$TwitchEmoteFormatEnumMap = {
  TwitchEmoteFormat.animated: 'animated',
  TwitchEmoteFormat.static: 'static',
};

const _$TwitchThemeModeEnumMap = {
  TwitchThemeMode.dark: 'dark',
  TwitchThemeMode.light: 'light',
};

_$_TwitchEmotes _$$_TwitchEmotesFromJson(Map<String, dynamic> json) =>
    _$_TwitchEmotes(
      id: json['id'] as String,
      name: json['name'] as String,
      images: TwitchCustomRewardImage.fromJson(
          json['images'] as Map<String, dynamic>),
      tier: json['tier'] as String,
      emoteType: $enumDecode(_$TwitchEmoteTypeEnumMap, json['emote_type']),
      emoteSetId: json['emote_set_id'] as String,
      format: (json['format'] as List<dynamic>)
          .map((e) => $enumDecode(_$TwitchEmoteFormatEnumMap, e))
          .toList(),
      scale: (json['scale'] as List<dynamic>).map((e) => e as String).toList(),
      themeMode: (json['theme_mode'] as List<dynamic>)
          .map((e) => $enumDecode(_$TwitchThemeModeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_TwitchEmotesToJson(_$_TwitchEmotes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'tier': instance.tier,
      'emote_type': _$TwitchEmoteTypeEnumMap[instance.emoteType]!,
      'emote_set_id': instance.emoteSetId,
      'format':
          instance.format.map((e) => _$TwitchEmoteFormatEnumMap[e]!).toList(),
      'scale': instance.scale,
      'theme_mode':
          instance.themeMode.map((e) => _$TwitchThemeModeEnumMap[e]!).toList(),
    };

const _$TwitchEmoteTypeEnumMap = {
  TwitchEmoteType.bitstier: 'bitstier',
  TwitchEmoteType.follower: 'follower',
  TwitchEmoteType.subscriptions: 'subscriptions',
};

_$_TwitchEmoteSets _$$_TwitchEmoteSetsFromJson(Map<String, dynamic> json) =>
    _$_TwitchEmoteSets(
      id: json['id'] as String,
      name: json['name'] as String,
      images: TwitchCustomRewardImage.fromJson(
          json['images'] as Map<String, dynamic>),
      emoteType: $enumDecode(_$TwitchEmoteTypeEnumMap, json['emote_type']),
      emoteSetId: json['emote_set_id'] as String,
      ownerId: json['owner_id'] as String,
      format: (json['format'] as List<dynamic>)
          .map((e) => $enumDecode(_$TwitchEmoteFormatEnumMap, e))
          .toList(),
      scale: (json['scale'] as List<dynamic>).map((e) => e as String).toList(),
      themeMode: (json['theme_mode'] as List<dynamic>)
          .map((e) => $enumDecode(_$TwitchThemeModeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_TwitchEmoteSetsToJson(_$_TwitchEmoteSets instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'emote_type': _$TwitchEmoteTypeEnumMap[instance.emoteType]!,
      'emote_set_id': instance.emoteSetId,
      'owner_id': instance.ownerId,
      'format':
          instance.format.map((e) => _$TwitchEmoteFormatEnumMap[e]!).toList(),
      'scale': instance.scale,
      'theme_mode':
          instance.themeMode.map((e) => _$TwitchThemeModeEnumMap[e]!).toList(),
    };
