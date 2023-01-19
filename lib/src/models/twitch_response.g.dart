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

Map<String, dynamic> _$$_StartCommercialResponseToJson(
        _$_StartCommercialResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ExtensionAnalyticsResponse _$$_ExtensionAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionAnalyticsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TwitchExtensionAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ExtensionAnalyticsResponseToJson(
        _$_ExtensionAnalyticsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$_GameAnalyticsResponse _$$_GameAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GameAnalyticsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGameAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_GameAnalyticsResponseToJson(
        _$_GameAnalyticsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

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

Map<String, dynamic> _$$_BitsLeaderboardResponseToJson(
        _$_BitsLeaderboardResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'date_range': instance.dateRange,
      'total': instance.total,
    };

_$_UsersResponse _$$_UsersResponseFromJson(Map<String, dynamic> json) =>
    _$_UsersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UsersResponseToJson(_$_UsersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_UsersFollowsResponse _$$_UsersFollowsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UsersFollowsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchUserFollow.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_UsersFollowsResponseToJson(
        _$_UsersFollowsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
      'total': instance.total,
    };

_$_TopGamesResponse _$$_TopGamesResponseFromJson(Map<String, dynamic> json) =>
    _$_TopGamesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_TopGamesResponseToJson(_$_TopGamesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$_GamesResponse _$$_GamesResponseFromJson(Map<String, dynamic> json) =>
    _$_GamesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GamesResponseToJson(_$_GamesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ChannelInformationResponse _$$_ChannelInformationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelInformationResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchChannelInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChannelInformationResponseToJson(
        _$_ChannelInformationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_SearchCategoriesResponse _$$_SearchCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchCategoriesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchCategoriesResponseToJson(
        _$_SearchCategoriesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_SearchChannelsResponse _$$_SearchChannelsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchChannelsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchSearchChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_SearchChannelsResponseToJson(
        _$_SearchChannelsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$_StreamsResponse _$$_StreamsResponseFromJson(Map<String, dynamic> json) =>
    _$_StreamsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchStreamInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_StreamsResponseToJson(_$_StreamsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

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

Map<String, dynamic> _$$_BroadcasterSubscriptionsResponseToJson(
        _$_BroadcasterSubscriptionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
      'total': instance.total,
      'points': instance.points,
    };

_$_CheermotesResponse _$$_CheermotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CheermotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchCheermote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheermotesResponseToJson(
        _$_CheermotesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ExtensionTransactionsResponse _$$_ExtensionTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionTransactionsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TwitchExtensionTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ExtensionTransactionsResponseToJson(
        _$_ExtensionTransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$_ChannelEmotesResponse _$$_ChannelEmotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelEmotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_ChannelEmotesResponseToJson(
        _$_ChannelEmotesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'template': instance.template,
    };

_$_ChannelGlobalEmotesResponse _$$_ChannelGlobalEmotesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelGlobalEmotesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGlobalEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_ChannelGlobalEmotesResponseToJson(
        _$_ChannelGlobalEmotesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'template': instance.template,
    };

_$_EmoteSetsResponse _$$_EmoteSetsResponseFromJson(Map<String, dynamic> json) =>
    _$_EmoteSetsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmoteSets.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_EmoteSetsResponseToJson(
        _$_EmoteSetsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'template': instance.template,
    };

_$_ChannelEditorsResponse _$$_ChannelEditorsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelEditorsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchChannelEditor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChannelEditorsResponseToJson(
        _$_ChannelEditorsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
