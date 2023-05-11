// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_chat_badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchChatBadge _$$_TwitchChatBadgeFromJson(Map<String, dynamic> json) =>
    _$_TwitchChatBadge(
      setId: json['set_id'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) => BadgeVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TwitchChatBadgeToJson(_$_TwitchChatBadge instance) =>
    <String, dynamic>{
      'set_id': instance.setId,
      'versions': instance.versions,
    };

_$_BadgeVersion _$$_BadgeVersionFromJson(Map<String, dynamic> json) =>
    _$_BadgeVersion(
      id: json['id'] as String,
      smallImageUrl: json['image_url_1x'] as String,
      mediumImageUrl: json['image_url_2x'] as String,
      largeImageUrl: json['image_url_4x'] as String,
    );

Map<String, dynamic> _$$_BadgeVersionToJson(_$_BadgeVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url_1x': instance.smallImageUrl,
      'image_url_2x': instance.mediumImageUrl,
      'image_url_4x': instance.largeImageUrl,
    };
