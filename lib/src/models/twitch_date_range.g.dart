// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_date_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchDateRangeImpl _$$TwitchDateRangeImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchDateRangeImpl(
      endedAt: json['ended_at'] as String,
      startedAt: json['started_at'] as String,
    );

Map<String, dynamic> _$$TwitchDateRangeImplToJson(
        _$TwitchDateRangeImpl instance) =>
    <String, dynamic>{
      'ended_at': instance.endedAt,
      'started_at': instance.startedAt,
    };
