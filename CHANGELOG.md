## [X.0.X]

* Refactored the package using `freezed` and `json_serializable`

## [0.6.1]

* Fixed [#6](https://github.com/TesteurManiak/twitch_api_flutter/issues/6)
* Added `Contributors` section to the `README.md`
* Updated dependencies

## [0.6.0]

* Fixed linting and analysis warnings.
* Updated dependencies, bumped Dart SDK to `2.15.0`.
* Improved tests and parsing.
* Added method `getChannelEmotes`
* Added method `getGlobalEmotes`
* Added method `getEmoteSets`
* Added method `getChannelChatBadges`
* Added method `getGlobalChatBadges`
* Added methode `getChatSettings`

## [0.5.1]

* Migrate example to nullsafety
* Fixed [#3](https://github.com/TesteurManiak/twitch_api_flutter/issues/3)

## [0.5.0]

* Added method `updateCustomReward` and `updateRedemptionStatus`
* Updated typecast for `TwitchHttpClient`
* `TwitchHttpClient.twitchToken` is now a `TwitchToken?`

## [0.4.0]

* **Breaking change:** `TwitchClient.startCommercial` is now taking named parameters,  `TwitchUser.broadcasterType` became a `TwitchBroadcasterType`,  `TwitchUserFollow.followedAt` is now a `DateTime`, removed class `TwitchTopGame`/`TwitchSearchCategory` use `TwitchGame` instead, removed `TwitchApiScopes.getScopeString` instead use the getter `string` from the enum
* Refacto to separate implementation of the HTTP provider,  `TwitchClient.accessToken` and `TwitchClient.validateToken` are deprecated
* Added method `createCustomRewards`,  `deleteCustomReward`,  `getCustomRewards`,  `getCustomRewardRedemptions`

## [0.3.1]

* Added methods: `modifyChannelinformation` and `getChannelEditors`

## [0.3.0]

* **Breaking change:** migration to null-safety
* Added boolean field `isMature` to `TwitchStreamInfo`
* Added code linting
* Added unit test for `TwitchStreamInfo` parsing

## [0.2.0]

* Added methods `getBitsLeaderboard`,  `getCheermotes`,  `getExtensionTransaction`
* **Breaking Changes:** `startCommercial`,  `getUsers`,  `getUsersFollows`,  `getGames`,  `getChannelInformations` now returns an object of type `TwitchResponse`

## [0.1.1]

* Added methods `searchCategories`,  `getBroadcasterSubscriptions`

## [0.1.0]

* **Breaking Changes:** `getExtensionAnalytics`,  `getGameAnalytics`,  `getTopGames`,  `searchChannels`,  `getStreams` now returns an object of type `TwitchResponse`
* Added and improved some comments for a better documentation

## [0.0.4]

* Added methods: `getStreams`,  `searchChannels`

## [0.0.3]

* Added methods: `getUsersFollows`,  `getTopGames`,  `getGames`,  `getChannelInformations`

## [0.0.2+1]

* Removed `dart:io` import.

## [0.0.2]

* Added methods: `getUsers`,  `getGameAnalytics`
* Fixed issues with `getExtensionAnalytics` and `getGameAnalytics`
* Improved comments and example file

## [0.0.1]

* First release
* Added methods: `startCommercial`,  `getExtensionAnalytics`,  `getGameAnalytics`
