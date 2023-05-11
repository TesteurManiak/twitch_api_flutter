// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_custom_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchCustomRewardImage _$$_TwitchCustomRewardImageFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchCustomRewardImage(
      url1x: json['url_1x'] as String,
      url2x: json['url_2x'] as String,
      url4x: json['url_4x'] as String,
    );

Map<String, dynamic> _$$_TwitchCustomRewardImageToJson(
        _$_TwitchCustomRewardImage instance) =>
    <String, dynamic>{
      'url_1x': instance.url1x,
      'url_2x': instance.url2x,
      'url_4x': instance.url4x,
    };

_$_TwitchMaxPerStream _$$_TwitchMaxPerStreamFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchMaxPerStream(
      isEnabled: json['is_enabled'] as bool,
      maxPerStream: json['max_per_stream'] as int,
    );

Map<String, dynamic> _$$_TwitchMaxPerStreamToJson(
        _$_TwitchMaxPerStream instance) =>
    <String, dynamic>{
      'is_enabled': instance.isEnabled,
      'max_per_stream': instance.maxPerStream,
    };

_$_TwitchMaxPerUserPerStreamSetting
    _$$_TwitchMaxPerUserPerStreamSettingFromJson(Map<String, dynamic> json) =>
        _$_TwitchMaxPerUserPerStreamSetting(
          isEnabled: json['is_enabled'] as bool,
          maxPerUserPerStream: json['max_per_user_per_stream'] as int,
        );

Map<String, dynamic> _$$_TwitchMaxPerUserPerStreamSettingToJson(
        _$_TwitchMaxPerUserPerStreamSetting instance) =>
    <String, dynamic>{
      'is_enabled': instance.isEnabled,
      'max_per_user_per_stream': instance.maxPerUserPerStream,
    };

_$_TwitchGlobalCooldownSetting _$$_TwitchGlobalCooldownSettingFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchGlobalCooldownSetting(
      isEnabled: json['is_enabled'] as bool,
      globalCooldownSeconds: json['global_cooldown_seconds'] as int,
    );

Map<String, dynamic> _$$_TwitchGlobalCooldownSettingToJson(
        _$_TwitchGlobalCooldownSetting instance) =>
    <String, dynamic>{
      'is_enabled': instance.isEnabled,
      'global_cooldown_seconds': instance.globalCooldownSeconds,
    };

_$_TwitchCustomReward _$$_TwitchCustomRewardFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchCustomReward(
      broadcasterName: json['broadcaster_name'] as String,
      broadcasterLogin: json['broadcaster_login'] as String?,
      broadcasterId: json['broadcaster_id'] as String,
      id: json['id'] as String,
      image: json['image'] == null
          ? null
          : TwitchCustomRewardImage.fromJson(
              json['image'] as Map<String, dynamic>),
      backgroundColor: json['background_color'] as String,
      isEnabled: json['is_enabled'] as bool,
      cost: json['cost'] as int,
      title: json['title'] as String,
      prompt: json['prompt'] as String,
      isUserInputRequired: json['is_user_input_required'] as bool,
      maxPerStreamSetting: TwitchMaxPerStream.fromJson(
          json['max_per_stream_setting'] as Map<String, dynamic>),
      maxPerUserPerStreamSetting: TwitchMaxPerUserPerStreamSetting.fromJson(
          json['max_per_user_per_stream_setting'] as Map<String, dynamic>),
      globalCooldownSetting: TwitchGlobalCooldownSetting.fromJson(
          json['global_cooldown_setting'] as Map<String, dynamic>),
      isPaused: json['is_paused'] as bool,
      isInStock: json['is_in_stock'] as bool,
      defaultImage: TwitchCustomRewardImage.fromJson(
          json['default_image'] as Map<String, dynamic>),
      shouldRedemptionsSkipRequestQueue:
          json['should_redemptions_skip_request_queue'] as bool,
      redemptionsRedeemedCurrentStream:
          json['redemptions_redeemed_current_stream'] as int?,
      cooldownExpiresAt: json['cooldown_expires_at'] as String?,
    );

Map<String, dynamic> _$$_TwitchCustomRewardToJson(
        _$_TwitchCustomReward instance) =>
    <String, dynamic>{
      'broadcaster_name': instance.broadcasterName,
      'broadcaster_login': instance.broadcasterLogin,
      'broadcaster_id': instance.broadcasterId,
      'id': instance.id,
      'image': instance.image,
      'background_color': instance.backgroundColor,
      'is_enabled': instance.isEnabled,
      'cost': instance.cost,
      'title': instance.title,
      'prompt': instance.prompt,
      'is_user_input_required': instance.isUserInputRequired,
      'max_per_stream_setting': instance.maxPerStreamSetting,
      'max_per_user_per_stream_setting': instance.maxPerUserPerStreamSetting,
      'global_cooldown_setting': instance.globalCooldownSetting,
      'is_paused': instance.isPaused,
      'is_in_stock': instance.isInStock,
      'default_image': instance.defaultImage,
      'should_redemptions_skip_request_queue':
          instance.shouldRedemptionsSkipRequestQueue,
      'redemptions_redeemed_current_stream':
          instance.redemptionsRedeemedCurrentStream,
      'cooldown_expires_at': instance.cooldownExpiresAt,
    };
