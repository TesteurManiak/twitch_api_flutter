## [0.5.0] - 12/09/2020

* Added method `updateCustomReward` and `updateRedemptionStatus`
* Updated typecast for `TwitchHttpClient`
* `TwitchHttpClient.twitchToken` is now a `TwitchToken?`

## [0.4.0] - 09/08/2021

* **Breaking change:** `TwitchClient.startCommercial` is now taking named parameters,  `TwitchUser.broadcasterType` became a `TwitchBroadcasterType`,  `TwitchUserFollow.followedAt` is now a `DateTime`, removed class `TwitchTopGame`/`TwitchSearchCategory` use `TwitchGame` instead, removed `TwitchApiScopes.getScopeString` instead use the getter `string` from the enum
* Refacto to separate implementation of the HTTP provider,  `TwitchClient.accessToken` and `TwitchClient.validateToken` are deprecated
* Added method `createCustomRewards`, `deleteCustomReward`, `getCustomRewards`, `getCustomRewardRedemptions`

## [0.3.1] - 24/06/2021

* Added methods: `modifyChannelinformation` and `getChannelEditors`

## [0.3.0] - 31/05/2021

* **Breaking change:** migration to null-safety
* Added boolean field `isMature` to `TwitchStreamInfo`
* Added code linting
* Added unit test for `TwitchStreamInfo` parsing

## [0.2.0] - 23/04/2021

* Added methods `getBitsLeaderboard`, `getCheermotes`, `getExtensionTransaction`
* **Breaking Changes:** `startCommercial`, `getUsers`, `getUsersFollows`, `getGames`,  `getChannelInformations` now returns an object of type `TwitchResponse`

## [0.1.1] - 26/03/2021.

* Added methods `searchCategories`, `getBroadcasterSubscriptions`

## [0.1.0] - 23/03/2021.

* **Breaking Changes:** `getExtensionAnalytics`, `getGameAnalytics`, `getTopGames`, `searchChannels`,  `getStreams` now returns an object of type `TwitchResponse`
* Added and improved some comments for a better documentation

## [0.0.4] - 23/03/2021.

* Added methods: `getStreams`, `searchChannels`

## [0.0.3] - 10/02/2021.

* Added methods: `getUsersFollows`, `getTopGames`, `getGames`, `getChannelInformations`

## [0.0.2+1] - 09/02/2021.

* Removed `dart:io` import.

## [0.0.2] - 09/02/2021.

* Added methods: `getUsers`, `getGameAnalytics`
* Fixed issues with `getExtensionAnalytics` and `getGameAnalytics`
* Improved comments and example file

## [0.0.1] - 08/02/2021.

* First release
* Added methods: `startCommercial`, `getExtensionAnalytics`, `getGameAnalytics`
