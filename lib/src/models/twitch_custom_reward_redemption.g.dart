// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_custom_reward_redemption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchRedemptionRewardInfoImpl _$$TwitchRedemptionRewardInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchRedemptionRewardInfoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      prompt: json['prompt'] as String,
      cost: (json['cost'] as num).toInt(),
    );

Map<String, dynamic> _$$TwitchRedemptionRewardInfoImplToJson(
        _$TwitchRedemptionRewardInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'prompt': instance.prompt,
      'cost': instance.cost,
    };

_$TwitchCustomRewardRedemptionImpl _$$TwitchCustomRewardRedemptionImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchCustomRewardRedemptionImpl(
      broadcasterId: json['broadcaster_id'] as String,
      broadcasterLogin: json['broadcaster_login'] as String,
      broadcasterName: json['broadcaster_name'] as String,
      id: json['id'] as String,
      userLogin: json['user_login'] as String?,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      reward: TwitchRedemptionRewardInfo.fromJson(
          json['reward'] as Map<String, dynamic>),
      userInput: json['user_input'] as String,
      status:
          $enumDecode(_$TwitchRewardRedemptionStatusEnumMap, json['status']),
      redeemedAt: DateTime.parse(json['redeemed_at'] as String),
    );

Map<String, dynamic> _$$TwitchCustomRewardRedemptionImplToJson(
        _$TwitchCustomRewardRedemptionImpl instance) =>
    <String, dynamic>{
      'broadcaster_id': instance.broadcasterId,
      'broadcaster_login': instance.broadcasterLogin,
      'broadcaster_name': instance.broadcasterName,
      'id': instance.id,
      'user_login': instance.userLogin,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'reward': instance.reward,
      'user_input': instance.userInput,
      'status': _$TwitchRewardRedemptionStatusEnumMap[instance.status]!,
      'redeemed_at': instance.redeemedAt.toIso8601String(),
    };

const _$TwitchRewardRedemptionStatusEnumMap = {
  TwitchRewardRedemptionStatus.unfulfilled: 'UNFULFILLED',
  TwitchRewardRedemptionStatus.fulfilled: 'FULFILLED',
  TwitchRewardRedemptionStatus.canceled: 'CANCELED',
};
