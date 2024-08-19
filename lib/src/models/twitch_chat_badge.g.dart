// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_chat_badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchChatBadgeImpl _$$TwitchChatBadgeImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchChatBadgeImpl(
      setId: json['set_id'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) => BadgeVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TwitchChatBadgeImplToJson(
        _$TwitchChatBadgeImpl instance) =>
    <String, dynamic>{
      'set_id': instance.setId,
      'versions': instance.versions,
    };

_$BadgeVersionImpl _$$BadgeVersionImplFromJson(Map<String, dynamic> json) =>
    _$BadgeVersionImpl(
      id: json['id'] as String,
      smallImageUrl: json['image_url_1x'] as String,
      mediumImageUrl: json['image_url_2x'] as String,
      largeImageUrl: json['image_url_4x'] as String,
    );

Map<String, dynamic> _$$BadgeVersionImplToJson(_$BadgeVersionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url_1x': instance.smallImageUrl,
      'image_url_2x': instance.mediumImageUrl,
      'image_url_4x': instance.largeImageUrl,
    };
