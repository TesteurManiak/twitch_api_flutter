// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_extension_analytic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchExtensionAnalytic _$$_TwitchExtensionAnalyticFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchExtensionAnalytic(
      dateRange:
          TwitchDateRange.fromJson(json['date_range'] as Map<String, dynamic>),
      extensionId: json['extension_id'] as String,
      type: json['type'] as String,
      url: json['URL'] as String,
    );

Map<String, dynamic> _$$_TwitchExtensionAnalyticToJson(
        _$_TwitchExtensionAnalytic instance) =>
    <String, dynamic>{
      'date_range': instance.dateRange,
      'extension_id': instance.extensionId,
      'type': instance.type,
      'URL': instance.url,
    };
