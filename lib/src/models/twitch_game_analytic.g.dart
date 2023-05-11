// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_game_analytic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchGameAnalytic _$$_TwitchGameAnalyticFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchGameAnalytic(
      gameId: json['game_id'] as String,
      type: json['type'] as String,
      url: json['URL'] as String,
      dateRange:
          TwitchDateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TwitchGameAnalyticToJson(
        _$_TwitchGameAnalytic instance) =>
    <String, dynamic>{
      'game_id': instance.gameId,
      'type': instance.type,
      'URL': instance.url,
      'date_range': instance.dateRange,
    };
