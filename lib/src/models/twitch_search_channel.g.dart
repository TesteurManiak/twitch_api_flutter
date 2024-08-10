// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_search_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchSearchChannelImpl _$$TwitchSearchChannelImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchSearchChannelImpl(
      gameId: json['game_id'] as String,
      gameName: json['game_name'] as String,
      id: json['id'] as String,
      broadcasterLogin: json['broadcaster_login'] as String,
      displayName: json['display_name'] as String,
      broadcasterLanguage: json['broadcaster_language'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      isLive: json['is_live'] as bool,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      tagIds:
          (json['tag_ids'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TwitchSearchChannelImplToJson(
        _$TwitchSearchChannelImpl instance) =>
    <String, dynamic>{
      'game_id': instance.gameId,
      'game_name': instance.gameName,
      'id': instance.id,
      'broadcaster_login': instance.broadcasterLogin,
      'display_name': instance.displayName,
      'broadcaster_language': instance.broadcasterLanguage,
      'title': instance.title,
      'thumbnail_url': instance.thumbnailUrl,
      'is_live': instance.isLive,
      'started_at': instance.startedAt?.toIso8601String(),
      'tag_ids': instance.tagIds,
    };
