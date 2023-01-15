// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_channel_editor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchChannelEditor _$$_TwitchChannelEditorFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchChannelEditor(
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_TwitchChannelEditorToJson(
        _$_TwitchChannelEditor instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'created_at': instance.createdAt.toIso8601String(),
    };
