// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_broadcaster_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchBroadcasterSubscriptionImpl
    _$$TwitchBroadcasterSubscriptionImplFromJson(Map<String, dynamic> json) =>
        _$TwitchBroadcasterSubscriptionImpl(
          broadcasterId: json['broadcaster_id'] as String,
          broadcasterLogin: json['broadcaster_login'] as String,
          broadcasterName: json['broadcaster_name'] as String,
          gifterId: json['gifter_id'] as String,
          gifterLogin: json['gifter_login'] as String,
          gifterName: json['gifter_name'] as String,
          isGift: json['is_gift'] as bool,
          planName: json['plan_name'] as String,
          tier: json['tier'] as String,
          userId: json['user_id'] as String,
          userName: json['user_name'] as String,
          userLogin: json['user_login'] as String,
        );

Map<String, dynamic> _$$TwitchBroadcasterSubscriptionImplToJson(
        _$TwitchBroadcasterSubscriptionImpl instance) =>
    <String, dynamic>{
      'broadcaster_id': instance.broadcasterId,
      'broadcaster_login': instance.broadcasterLogin,
      'broadcaster_name': instance.broadcasterName,
      'gifter_id': instance.gifterId,
      'gifter_login': instance.gifterLogin,
      'gifter_name': instance.gifterName,
      'is_gift': instance.isGift,
      'plan_name': instance.planName,
      'tier': instance.tier,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_login': instance.userLogin,
    };
