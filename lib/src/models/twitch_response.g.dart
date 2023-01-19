// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartCommercialResponse _$$_StartCommercialResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StartCommercialResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchStartCommercial.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ExtensionAnalyticsResponse _$$_ExtensionAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionAnalyticsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TwitchExtensionAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$_GameAnalyticsResponse _$$_GameAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GameAnalyticsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGameAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$_BitsLeaderboardResponse _$$_BitsLeaderboardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BitsLeaderboardResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchBitsLeaderboard.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateRange:
          TwitchDateRange.fromJson(json['date_range'] as Map<String, dynamic>),
      total: json['total'] as int,
    );

_$_UsersResponse _$$_UsersResponseFromJson(Map<String, dynamic> json) =>
    _$_UsersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_UsersFollowsResponse _$$_UsersFollowsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UsersFollowsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchUserFollow.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
      total: json['total'] as int,
    );

_$_TopGamesResponse _$$_TopGamesResponseFromJson(Map<String, dynamic> json) =>
    _$_TopGamesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$_GamesResponse _$$_GamesResponseFromJson(Map<String, dynamic> json) =>
    _$_GamesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ChannelInformationResponse _$$_ChannelInformationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelInformationResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchChannelInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_SearchCategoriesResponse _$$_SearchCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchCategoriesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_SearchChannelsResponse _$$_SearchChannelsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchChannelsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchSearchChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$_StreamsResponse _$$_StreamsResponseFromJson(Map<String, dynamic> json) =>
    _$_StreamsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchStreamInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$_BroadcasterSubscriptionsResponse
    _$$_BroadcasterSubscriptionsResponseFromJson(Map<String, dynamic> json) =>
        _$_BroadcasterSubscriptionsResponse(
          data: (json['data'] as List<dynamic>)
              .map((e) => TwitchBroadcasterSubscription.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] as Map<String, dynamic>?,
          total: json['total'] as int,
          points: json['points'] as int,
        );

_$_CheermotesResponse _$$_CheermotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CheermotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchCheermote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ExtensionTransactionsResponse _$$_ExtensionTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionTransactionsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TwitchExtensionTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$_ChannelEmotesResponse _$$_ChannelEmotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelEmotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

_$_ChannelGlobalEmotesResponse _$$_ChannelGlobalEmotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelGlobalEmotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGlobalEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

_$_EmoteSetsResponse _$$_EmoteSetsResponseFromJson(Map<String, dynamic> json) =>
    _$_EmoteSetsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmoteSets.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

_$_ChannelEditorsResponse _$$_ChannelEditorsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelEditorsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchChannelEditor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_CustomRewardResponse _$$_CustomRewardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CustomRewardResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchCustomReward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
