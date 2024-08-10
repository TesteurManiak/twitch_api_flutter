// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_custom_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchCustomRewardImageImpl _$$TwitchCustomRewardImageImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchCustomRewardImageImpl(
      url1x: json['url_1x'] as String,
      url2x: json['url_2x'] as String,
      url4x: json['url_4x'] as String,
    );

Map<String, dynamic> _$$TwitchCustomRewardImageImplToJson(
        _$TwitchCustomRewardImageImpl instance) =>
    <String, dynamic>{
      'url_1x': instance.url1x,
      'url_2x': instance.url2x,
      'url_4x': instance.url4x,
    };

_$TwitchMaxPerStreamImpl _$$TwitchMaxPerStreamImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchMaxPerStreamImpl(
      isEnabled: json['is_enabled'] as bool,
      maxPerStream: (json['max_per_stream'] as num).toInt(),
    );

Map<String, dynamic> _$$TwitchMaxPerStreamImplToJson(
        _$TwitchMaxPerStreamImpl instance) =>
    <String, dynamic>{
      'is_enabled': instance.isEnabled,
      'max_per_stream': instance.maxPerStream,
    };

_$TwitchMaxPerUserPerStreamSettingImpl
    _$$TwitchMaxPerUserPerStreamSettingImplFromJson(
            Map<String, dynamic> json) =>
        _$TwitchMaxPerUserPerStreamSettingImpl(
          isEnabled: json['is_enabled'] as bool,
          maxPerUserPerStream: (json['max_per_user_per_stream'] as num).toInt(),
        );

Map<String, dynamic> _$$TwitchMaxPerUserPerStreamSettingImplToJson(
        _$TwitchMaxPerUserPerStreamSettingImpl instance) =>
    <String, dynamic>{
      'is_enabled': instance.isEnabled,
      'max_per_user_per_stream': instance.maxPerUserPerStream,
    };

_$TwitchGlobalCooldownSettingImpl _$$TwitchGlobalCooldownSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchGlobalCooldownSettingImpl(
      isEnabled: json['is_enabled'] as bool,
      globalCooldownSeconds: (json['global_cooldown_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$$TwitchGlobalCooldownSettingImplToJson(
        _$TwitchGlobalCooldownSettingImpl instance) =>
    <String, dynamic>{
      'is_enabled': instance.isEnabled,
      'global_cooldown_seconds': instance.globalCooldownSeconds,
    };

_$TwitchCustomRewardImpl _$$TwitchCustomRewardImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchCustomRewardImpl(
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
      cost: (json['cost'] as num).toInt(),
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
          (json['redemptions_redeemed_current_stream'] as num?)?.toInt(),
      cooldownExpiresAt: json['cooldown_expires_at'] as String?,
    );

Map<String, dynamic> _$$TwitchCustomRewardImplToJson(
        _$TwitchCustomRewardImpl instance) =>
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
