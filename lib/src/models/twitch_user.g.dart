// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchUser _$$_TwitchUserFromJson(Map<String, dynamic> json) =>
    _$_TwitchUser(
      id: json['id'] as String,
      login: json['login'] as String,
      displayName: json['display_name'] as String,
      type: json['type'] as String,
      broadcasterType:
          $enumDecode(_$TwitchBroadcasterTypeEnumMap, json['broadcaster_type']),
      description: json['description'] as String,
      profileImageUrl: json['profile_image_url'] as String,
      offlineImageUrl: json['offline_image_url'] as String,
      viewCount: json['view_count'] as int,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_TwitchUserToJson(_$_TwitchUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'display_name': instance.displayName,
      'type': instance.type,
      'broadcaster_type':
          _$TwitchBroadcasterTypeEnumMap[instance.broadcasterType]!,
      'description': instance.description,
      'profile_image_url': instance.profileImageUrl,
      'offline_image_url': instance.offlineImageUrl,
      'view_count': instance.viewCount,
      'email': instance.email,
      'created_at': instance.createdAt,
    };

const _$TwitchBroadcasterTypeEnumMap = {
  TwitchBroadcasterType.partner: 'partner',
  TwitchBroadcasterType.affiliate: 'affiliate',
  TwitchBroadcasterType.none: '',
};
