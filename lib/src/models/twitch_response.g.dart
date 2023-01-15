// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartCommercialResponse _$$_StartCommercialResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StartCommercialResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchStartCommercial.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StartCommercialResponseToJson(
        _$_StartCommercialResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ExtensionAnalyticsResponse _$$_ExtensionAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionAnalyticsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TwitchExtensionAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_ExtensionAnalyticsResponseToJson(
        _$_ExtensionAnalyticsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$_CheermotesResponse _$$_CheermotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CheermotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchCheermote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheermotesResponseToJson(
        _$_CheermotesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

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
