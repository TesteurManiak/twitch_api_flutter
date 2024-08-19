// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartCommercialResponseImpl _$$StartCommercialResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StartCommercialResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchStartCommercial.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$ExtensionAnalyticsResponseImpl _$$ExtensionAnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtensionAnalyticsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              TwitchExtensionAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$GameAnalyticsResponseImpl _$$GameAnalyticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GameAnalyticsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGameAnalytic.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$BitsLeaderboardResponseImpl _$$BitsLeaderboardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BitsLeaderboardResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchBitsLeaderboard.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateRange:
          TwitchDateRange.fromJson(json['date_range'] as Map<String, dynamic>),
      total: (json['total'] as num).toInt(),
    );

_$UsersResponseImpl _$$UsersResponseImplFromJson(Map<String, dynamic> json) =>
    _$UsersResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$UsersFollowsResponseImpl _$$UsersFollowsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersFollowsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchUserFollow.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
      total: (json['total'] as num).toInt(),
    );

_$TopGamesResponseImpl _$$TopGamesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopGamesResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$GamesResponseImpl _$$GamesResponseImplFromJson(Map<String, dynamic> json) =>
    _$GamesResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$ChannelInformationResponseImpl _$$ChannelInformationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelInformationResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchChannelInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$SearchCategoriesResponseImpl _$$SearchCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchCategoriesResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$SearchChannelsResponseImpl _$$SearchChannelsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchChannelsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchSearchChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$StreamsResponseImpl _$$StreamsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchStreamInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );

_$BroadcasterSubscriptionsResponseImpl
    _$$BroadcasterSubscriptionsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BroadcasterSubscriptionsResponseImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => TwitchBroadcasterSubscription.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] as Map<String, dynamic>?,
          total: (json['total'] as num).toInt(),
          points: (json['points'] as num).toInt(),
        );

_$CheermotesResponseImpl _$$CheermotesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheermotesResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchCheermote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$ExtensionTransactionsResponseImpl
    _$$ExtensionTransactionsResponseImplFromJson(Map<String, dynamic> json) =>
        _$ExtensionTransactionsResponseImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => TwitchExtensionTransaction.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] as Map<String, dynamic>?,
        );

_$ChannelEmotesResponseImpl _$$ChannelEmotesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelEmotesResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

_$ChannelGlobalEmotesResponseImpl _$$ChannelGlobalEmotesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelGlobalEmotesResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchGlobalEmotes.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

_$EmoteSetsResponseImpl _$$EmoteSetsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EmoteSetsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchEmoteSets.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: json['template'] as String,
    );

_$ChannelEditorsResponseImpl _$$ChannelEditorsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelEditorsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchChannelEditor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$CustomRewardResponseImpl _$$CustomRewardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomRewardResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchCustomReward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$CustomRewardRedemptionResponseImpl
    _$$CustomRewardRedemptionResponseImplFromJson(Map<String, dynamic> json) =>
        _$CustomRewardRedemptionResponseImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => TwitchCustomRewardRedemption.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] as Map<String, dynamic>?,
        );

_$TwitchTokenRefreshResponseImpl _$$TwitchTokenRefreshResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchTokenRefreshResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchTokenRefresh.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] as Map<String, dynamic>?,
    );
