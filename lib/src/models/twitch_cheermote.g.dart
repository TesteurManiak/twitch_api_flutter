// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_cheermote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchCheermote _$$_TwitchCheermoteFromJson(Map<String, dynamic> json) =>
    _$_TwitchCheermote(
      prefix: json['prefix'] as String,
      tiers: (json['tiers'] as List<dynamic>)
          .map((e) => TwitchCheermoteTier.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$TwitchCheermoteTypeEnumMap, json['type']),
      order: json['order'] as int,
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      isCharitable: json['is_charitable'] as bool,
    );

Map<String, dynamic> _$$_TwitchCheermoteToJson(_$_TwitchCheermote instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'tiers': instance.tiers,
      'type': _$TwitchCheermoteTypeEnumMap[instance.type]!,
      'order': instance.order,
      'last_updated': instance.lastUpdated.toIso8601String(),
      'is_charitable': instance.isCharitable,
    };

const _$TwitchCheermoteTypeEnumMap = {
  TwitchCheermoteType.globalFirstParty: 'global_first_party',
  TwitchCheermoteType.globalThirdParty: 'global_third_party',
  TwitchCheermoteType.channelCustom: 'channel_custom',
  TwitchCheermoteType.displayOnly: 'display_only',
  TwitchCheermoteType.sponsored: 'sponsored',
};
