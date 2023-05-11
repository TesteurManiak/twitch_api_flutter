// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_bits_leaderboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitchBitsLeaderboard _$$_TwitchBitsLeaderboardFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchBitsLeaderboard(
      userId: json['user_id'] as String,
      userLogin: json['user_login'] as String,
      userName: json['user_name'] as String,
      rank: json['rank'] as int,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$_TwitchBitsLeaderboardToJson(
        _$_TwitchBitsLeaderboard instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_login': instance.userLogin,
      'user_name': instance.userName,
      'rank': instance.rank,
      'score': instance.score,
    };
