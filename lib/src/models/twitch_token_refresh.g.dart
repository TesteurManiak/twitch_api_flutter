// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_token_refresh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchTokenRefreshImpl _$$TwitchTokenRefreshImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchTokenRefreshImpl(
      accessToken: json['access_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
      scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TwitchTokenRefreshImplToJson(
        _$TwitchTokenRefreshImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'scope': instance.scope,
    };
