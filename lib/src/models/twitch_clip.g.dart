// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_clip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchClipImpl _$$TwitchClipImplFromJson(Map<String, dynamic> json) =>
    _$TwitchClipImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      embedUrl: json['embed_url'] as String,
      broadcasterId: json['broadcaster_id'] as String,
      broadcasterName: json['broadcaster_name'] as String,
      creatorUd: json['creator_id'] as String,
      creatorName: json['creator_name'] as String,
      videoUd: json['video_id'] as String,
      gameUd: json['game_id'] as String,
      language: json['language'] as String,
      title: json['title'] as String,
      viewCount: json['view_count'] as String,
      createdAt: json['created_at'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      duration: (json['duration'] as num).toDouble(),
      vodOffset: json['vod_offset'] as String,
      isFeatured: json['is_featured'] as bool,
    );

Map<String, dynamic> _$$TwitchClipImplToJson(_$TwitchClipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'embed_url': instance.embedUrl,
      'broadcaster_id': instance.broadcasterId,
      'broadcaster_name': instance.broadcasterName,
      'creator_id': instance.creatorUd,
      'creator_name': instance.creatorName,
      'video_id': instance.videoUd,
      'game_id': instance.gameUd,
      'language': instance.language,
      'title': instance.title,
      'view_count': instance.viewCount,
      'created_at': instance.createdAt,
      'thumbnail_url': instance.thumbnailUrl,
      'duration': instance.duration,
      'vod_offset': instance.vodOffset,
      'is_featured': instance.isFeatured,
    };
