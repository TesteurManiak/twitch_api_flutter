// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_stream_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchStreamInfo _$$_TwitchStreamInfoFromJson(Map<String, dynamic> json) =>
    _$_TwitchStreamInfo(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      userLogin: json['user_login'] as String,
      userName: json['user_name'] as String,
      gameId: json['game_id'] as String,
      gameName: json['game_name'] as String,
      type: $enumDecode(_$TwitchStreamTypeEnumMap, json['type']),
      title: json['title'] as String,
      viewerCount: json['viewer_count'] as int,
      startedAt: DateTime.parse(json['started_at'] as String),
      language: json['language'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      tagIds:
          (json['tag_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isMature: json['is_mature'] as bool,
    );

Map<String, dynamic> _$$_TwitchStreamInfoToJson(_$_TwitchStreamInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_login': instance.userLogin,
      'user_name': instance.userName,
      'game_id': instance.gameId,
      'game_name': instance.gameName,
      'type': _$TwitchStreamTypeEnumMap[instance.type]!,
      'title': instance.title,
      'viewer_count': instance.viewerCount,
      'started_at': instance.startedAt.toIso8601String(),
      'language': instance.language,
      'thumbnail_url': instance.thumbnailUrl,
      'tag_ids': instance.tagIds,
      'is_mature': instance.isMature,
    };

const _$TwitchStreamTypeEnumMap = {
  TwitchStreamType.live: 'live',
  TwitchStreamType.error: 'error',
};
