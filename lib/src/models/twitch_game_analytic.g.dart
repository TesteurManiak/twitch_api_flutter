// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_game_analytic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchGameAnalyticImpl _$$TwitchGameAnalyticImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchGameAnalyticImpl(
      gameId: json['game_id'] as String,
      type: json['type'] as String,
      url: json['URL'] as String,
      dateRange:
          TwitchDateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TwitchGameAnalyticImplToJson(
        _$TwitchGameAnalyticImpl instance) =>
    <String, dynamic>{
      'game_id': instance.gameId,
      'type': instance.type,
      'URL': instance.url,
      'date_range': instance.dateRange,
    };
