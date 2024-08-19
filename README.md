# twitch_api

[![Dart](https://github.com/TesteurManiak/twitch_api_flutter/actions/workflows/dart.yml/badge.svg)](https://github.com/TesteurManiak/twitch_api_flutter/actions/workflows/dart.yml)
[![Pub](https://img.shields.io/pub/v/twitch_api?color=blue&logo=dart)](https://pub.dev/packages/twitch_api)
[![Coverage Status](https://coveralls.io/repos/github/TesteurManiak/twitch_api_flutter/badge.svg?branch=main)](https://coveralls.io/github/TesteurManiak/twitch_api_flutter?branch=main)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

A wrapper in pure Dart to connect to Twitch.tv using OAuth implicit authentication.

All the endpoints are implemented as defined in the [Twitch API Reference](https://dev.twitch.tv/docs/api/reference)

## Getting started

**NOTE: This package is in its early stage, please be patient until more methods are implemented or do not hesitate to open a merge request if you added support for an endpoint. Currently I do not have a roadmap of the endpoint I am going to add in priority so do not hesitate to [open an issue](https://github.com/TesteurManiak/twitch_api_flutter/issues) to make suggestions depending of your needs.**

To use this package you will need to register an application on the [Twitch developer console](https://dev.twitch.tv/console/apps) to get a **client ID**.

* [Get Started with the Twitch API](https://dev.twitch.tv/docs/api/)

After registering your application you will need to instantiate the `TwitchClient` class from the package with your `clientId` and your `redirectUri` .

```dart
import 'package:twitch_api/twitch_api.dart';

final _twitchClient = TwitchClient(
  clientId: clientId,
  redirectUri: redirectUri,
);
```

Now that you have initialized the client the last step before using the method will be to manage the first connection with your twitch account and initialize the token you will receive. You can find a complete example of an implementation using the package [flutter_webview_plugin](https://pub.dev/packages/flutter_webview_plugin).

```dart
const clientId = "<YOUR_CLIENT_ID>";
const redirectUri = "<YOUR_REDIRECT_URL>"; // ex: "http://localhost/"

final _twitchClient = TwitchClient(
  clientId: clientId,
  redirectUri: redirectUri,
);

final _flutterWebviewPlugin = FlutterWebviewPlugin();

// First authentication through a webview
Future<TwitchToken> _openConnectionPage({
  List<TwitchApiScope> scopes = const [],
}) {
  // Listen for url changes to detect redirection on our redirectUri.
  _flutterWebviewPlugin.onUrlChanged.listen((url) {
    if (url.startsWith(_twitchClient.redirectUri)) {
      // After you got to your redirectUri you can initialize the token.
      _twitchClient.initializeToken(TwitchToken.fromUrl(url));

      // Close the webview
      _flutterWebviewPlugin.close();
    }
  });

  // When the webview is closed pop the current route.
  _flutterWebviewPlugin.onDestroy.listen((_) => Navigator.pop(context));

  // Get authorization URL for the connection with the webview.
  final _url = _twitchClient.authorizeUri(scopes);

  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => WebViewPage(_url.toString()),
    ),
  ).then((_) => _twitchClient.twitchHttpClient.validateToken());
}
```

Now you are ready to use the methods implemented in [Supported Endpoints](#supported-endpoints) section.

## Supported Endpoints

### Ads

* [x] Start Commercial

### Analytics

* [x] Get Extension Analytics
* [x] Get Game Analytics (Documentation in progress)

### Bits

* [x] Get Bits Leaderboard
* [x] Get Cheermotes
* [x] Get Extension Transactions

### Channels

* [x] Get Channel Information
* [x] Modify Channel Information
* [x] Get Channel Editors

### Channel Points

* [x] Create Custom Rewards
* [x] Delete Custom Reward
* [x] Get Custom Reward
* [x] Get Custom Reward Redemption
* [x] Update Custom Reward
* [x] Update Redemption Status

### Chat

* [x] Get Channel Emotes
* [x] Get Global Emotes
* [x] Get Emote Sets
* [x] Get Channel Chat Badges
* [x] Get Global Chat Badges
* [x] Get Chat Settings
* [ ] Update Chat Settings

### Clips

* [ ] Create Clip
* [ ] Get Clips

### Entitlements

* [ ] Create Entitlement Grants Upload URL
* [ ] Get Code Status
* [ ] Get Drops Entitlements
* [ ] Redeem Code

### Extensions

* [ ] Get Extension Configuration Segment
* [ ] Set Extension Configuration Segment
* [ ] Set Extension Required Configuration
* [ ] Send Extension PubSub Message
* [ ] Get Live Channels
* [ ] Get Extension Secrets
* [ ] Create Extension Secret
* [ ] Send Extension Chat Message
* [ ] Get Extensions
* [ ] Get Released Extensions
* [ ] Get Extension Bits Products
* [ ] Update Extension Bits Product

### EventSub

* [ ] Create EventSub Subscription
* [ ] Delete EventSub Subscription
* [ ] Get EventSub Subscriptions

### Games

* [x] Get Top Games
* [x] Get Games

### Hype Train

* [ ] Get Hype Train Events

### Moderation

* [ ] Check AutoMod Status
* [ ] Get Banned Events
* [ ] Get Banned Users
* [ ] Get Moderators
* [ ] Get Moderator Events

### Polls

* [ ] Get Polls
* [ ] Create Poll
* [ ] End Poll

### Predictions

* [ ] Get Predictions
* [ ] Create Prediction
* [ ] End Prediction

### Schedule

* [ ] Get Channel Stream Schedule
* [ ] Get Channel iCalendar
* [ ] Update Channel Stream Schedule
* [ ] Create Channel Stream Schedule Segment
* [ ] Update Channel Stream Schedule Segment
* [ ] Delete Channel Stream Schedule Segment

### Search

* [x] Search Categories
* [x] Search Channels

### Streams

* [ ] Get Stream Key
* [x] Get Streams
* [ ] Create Stream Marker
* [ ] Get Stream Markers

### Subscriptions

* [x] Get Broadcaster Subscriptions

### Tags

* [ ] Get All Stream Tags
* [ ] Get Stream Tags
* [ ] Replace Stream Tags

### Users

* [x] Get Users
* [ ] Update User
* [x] Get Users Follows
* [ ] Create User Follows
* [ ] Delete User Follows
* [ ] Get User Block List
* [ ] Block User
* [ ] Unblock User
* [ ] Get User Extensions
* [ ] Get User Active Extensions
* [ ] Update User Extensions

### Videos

* [ ] Get Videos
* [ ] Delete Videos

### Webhooks

* [ ] Get Webhook Subscriptions

## Contributors

<!-- readme: contributors -start -->
<table>
<tr>
    <td align="center">
        <a href="https://github.com/TesteurManiak">
            <img src="https://avatars.githubusercontent.com/u/14369698?v=4" width="100;" alt="TesteurManiak"/>
            <br />
            <sub><b>Guillaume Roux</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/LewisHolliday">
            <img src="https://avatars.githubusercontent.com/u/83846295?v=4" width="100;" alt="LewisHolliday"/>
            <br />
            <sub><b>Lewis Holliday</b></sub>
        </a>
    </td></tr>
</table>
<!-- readme: contributors -end -->
