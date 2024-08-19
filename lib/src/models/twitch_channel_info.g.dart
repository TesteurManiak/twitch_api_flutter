// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_channel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchChannelInfoImpl _$$TwitchChannelInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchChannelInfoImpl(
      broadcasterId: json['broadcaster_id'] as String,
      broadcasterName: json['broadcaster_name'] as String,
      gameName: json['game_name'] as String,
      gameId: json['game_id'] as String,
      broadcasterLanguage: json['broadcaster_language'] as String,
      title: json['title'] as String,
      delay: (json['delay'] as num).toInt(),
    );

Map<String, dynamic> _$$TwitchChannelInfoImplToJson(
        _$TwitchChannelInfoImpl instance) =>
    <String, dynamic>{
      'broadcaster_id': instance.broadcasterId,
      'broadcaster_name': instance.broadcasterName,
      'game_name': instance.gameName,
      'game_id': instance.gameId,
      'broadcaster_language': instance.broadcasterLanguage,
      'title': instance.title,
      'delay': instance.delay,
    };
