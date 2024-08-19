// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_bits_leaderboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitchBitsLeaderboardImpl _$$TwitchBitsLeaderboardImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchBitsLeaderboardImpl(
      userId: json['user_id'] as String,
      userLogin: json['user_login'] as String,
      userName: json['user_name'] as String,
      rank: (json['rank'] as num).toInt(),
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$$TwitchBitsLeaderboardImplToJson(
        _$TwitchBitsLeaderboardImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_login': instance.userLogin,
      'user_name': instance.userName,
      'rank': instance.rank,
      'score': instance.score,
    };
