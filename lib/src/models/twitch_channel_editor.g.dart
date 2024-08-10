// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_channel_editor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchChannelEditorImpl _$$TwitchChannelEditorImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchChannelEditorImpl(
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$TwitchChannelEditorImplToJson(
        _$TwitchChannelEditorImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'created_at': instance.createdAt.toIso8601String(),
    };
