// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_create_clip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchCreateClipImpl _$$TwitchCreateClipImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchCreateClipImpl(
      editUrl: json['edit_url'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$TwitchCreateClipImplToJson(
        _$TwitchCreateClipImpl instance) =>
    <String, dynamic>{
      'edit_url': instance.editUrl,
      'id': instance.id,
    };
