// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_chat_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchChatSettingsImpl _$$TwitchChatSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchChatSettingsImpl(
      broadcasterId: json['broadcaster_id'] as String,
      emoteMode: json['emote_mode'] as bool,
      followerMode: json['follower_mode'] as bool,
      followerModeDuration: (json['follower_mode_duration'] as num?)?.toInt(),
      moderatorId: json['moderator_id'] as String?,
      nonModeratorChatDelay: json['non_moderator_chat_delay'] as bool,
      nonModeratorChatDelayDuration:
          (json['non_moderator_chat_delay_duration'] as num?)?.toInt(),
      slowMode: json['slow_mode'] as bool,
      slowModeWaitTime: (json['slow_mode_wait_time'] as num?)?.toInt(),
      subscriberMode: json['subscriber_mode'] as bool,
      uniqueChatMode: json['unique_chat_mode'] as bool,
    );

Map<String, dynamic> _$$TwitchChatSettingsImplToJson(
        _$TwitchChatSettingsImpl instance) =>
    <String, dynamic>{
      'broadcaster_id': instance.broadcasterId,
      'emote_mode': instance.emoteMode,
      'follower_mode': instance.followerMode,
      'follower_mode_duration': instance.followerModeDuration,
      'moderator_id': instance.moderatorId,
      'non_moderator_chat_delay': instance.nonModeratorChatDelay,
      'non_moderator_chat_delay_duration':
          instance.nonModeratorChatDelayDuration,
      'slow_mode': instance.slowMode,
      'slow_mode_wait_time': instance.slowModeWaitTime,
      'subscriber_mode': instance.subscriberMode,
      'unique_chat_mode': instance.uniqueChatMode,
    };
