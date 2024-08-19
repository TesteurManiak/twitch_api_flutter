// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_user_follow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchUserFollowImpl _$$TwitchUserFollowImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchUserFollowImpl(
      followedAt: DateTime.parse(json['followed_at'] as String),
      fromId: json['from_id'] as String,
      fromLogin: json['from_login'] as String,
      fromName: json['from_name'] as String,
      toId: json['to_id'] as String,
      toLogin: json['to_login'] as String?,
      toName: json['to_name'] as String,
    );

Map<String, dynamic> _$$TwitchUserFollowImplToJson(
        _$TwitchUserFollowImpl instance) =>
    <String, dynamic>{
      'followed_at': instance.followedAt.toIso8601String(),
      'from_id': instance.fromId,
      'from_login': instance.fromLogin,
      'from_name': instance.fromName,
      'to_id': instance.toId,
      'to_login': instance.toLogin,
      'to_name': instance.toName,
    };
