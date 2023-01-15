// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelEmotesResponse _$$_ChannelEmotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelEmotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_ChannelEmotesResponseToJson(
        _$_ChannelEmotesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'template': instance.template,
    };

_$_ChannelGlobalEmotesResponse _$$_ChannelGlobalEmotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelGlobalEmotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGlobalEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_ChannelGlobalEmotesResponseToJson(
        _$_ChannelGlobalEmotesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'template': instance.template,
    };

_$_EmoteSetsResponse _$$_EmoteSetsResponseFromJson(Map<String, dynamic> json) =>
    _$_EmoteSetsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmoteSets.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_EmoteSetsResponseToJson(
        _$_EmoteSetsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'template': instance.template,
    };
