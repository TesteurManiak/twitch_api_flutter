import 'package:example/webview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:twitch_api/twitch_api.dart';

const clientId = "YOUR CLIENT ID";
const redirectUri = "http://localhost:8080/static.html";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _twitchClient =
      TwitchClient(clientId: clientId, redirectUri: redirectUri);
  final _flutterWebviewPlugin = FlutterWebviewPlugin();

  void _urlListener(String url) {
    if (url.startsWith(redirectUri)) {
      _twitchClient.initializeToken(TwitchToken.fromUrl(url));
      _flutterWebviewPlugin.close();
    }
  }

  // First authentication through a webview
  Future<TwitchToken> _openConnectionPage(
      {List<TwitchApiScope> scopes = const []}) {
    _flutterWebviewPlugin.onUrlChanged.listen(_urlListener);
    _flutterWebviewPlugin.onDestroy.listen((_) => Navigator.pop(context));

    // Get authorization URL for the connection with the webview.
    final url = _twitchClient.authorizeUri(scopes);

    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(url.toString()),
      ),
    ).then((_) => _twitchClient.validateToken());
  }

  @override
  void initState() {
    super.initState();

    if (_twitchClient.accessToken == null) {
      WidgetsBinding.instance.scheduleFrameCallback((_) {
        _openConnectionPage(scopes: [
          TwitchApiScope.channelEditCommercial,
          TwitchApiScope.analyticsReadExtensions,
          TwitchApiScope.analyticsReadGames,
          TwitchApiScope.userReadEmail,
          TwitchApiScope.channelReadSubscriptions,
          TwitchApiScope.bitsRead,
        ]).then((value) => setState(() {}));
      });
    }
  }

  void _displayDataAlert(
    String method,
    String data, {
    bool isImg = false,
    bool isOnline,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(method),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isOnline != null)
                Text(
                  isOnline ? 'Online' : 'Offline',
                  style: TextStyle(
                    color: isOnline ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              !isImg ? Text(data) : Image.network(data),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _twitchClient.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Text('Welcome user: ${_twitchClient.accessToken?.userId}'),
          Text('Your Twitch token is: ${_twitchClient.accessToken?.token}'),
          ElevatedButton(
            child: Text('Start Commercial'),
            onPressed: () => _twitchClient
                .startCommercial(_twitchClient.accessToken.userId, 60)
                .catchError((error) {
              _displayDataAlert('startCommercial', error.toString());
            }),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getExtensionAnalytics(first: 1)
                .catchError((error) {
              _displayDataAlert('getExtensionAnalytics', error.toString());
            }),
            child: Text('Get Extension Analytics'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getGameAnalytics(gameId: '493057')
                .catchError((error) {
              _displayDataAlert('getGameAnalytics', error.toString());
            }),
            child: Text('Get Games Analytics'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getUsersFollows(toId: '23161357')
                .then((value) => _displayDataAlert(
                    'getUsersFollows', 'Total followers: ${value.total}')),
            child: Text('Get User Follows from id 23161357'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getUsers(ids: ['44322889']).then(
                (value) => _displayDataAlert(value.data.first.displayName,
                    value.data.first.description)),
            child: Text('Get User Dallas from id'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.getTopGames().then((value) => _displayDataAlert(
                      'Top Games',
                      value.data.map<String>((e) => e.name).toList().join('\n'),
                    )),
            child: Text('Get Top Games'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getGames(names: ['Fortnite']).then(
                (value) => _displayDataAlert(
                    value.first.name, value.first.getBoxArtUrl(),
                    isImg: true)),
            child: Text('Get Fortnite'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getChannelInformations('44445592')
                .then((value) => _displayDataAlert(
                    value.first.broadcasterName, value.first.title)),
            child: Text('Get Pokimane Channel Info'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.getStreams(userLogins: ['auronplay']).then(
              (value) => _displayDataAlert(value.data.first.userLogin,
                  'Viewers: ${value.data.first.viewerCount}',
                  isOnline: value.data.first.type == TwitchStreamType.live),
            ),
            child: Text('Get auronplay Stream Info'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.searchChannels(query: 'loserfruit').then(
                      (value) => _displayDataAlert(value.data.first.displayName,
                          value.data.first.thumbnailUrl,
                          isImg: true, isOnline: value.data.first.isLive),
                    ),
            child: Text('Search loserfruit Channel'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.searchCategories(query: 'fort').then(
                  (value) => _displayDataAlert(
                      value.data.first.name, value.data.first.boxArtUrl,
                      isImg: true),
                ),
            child: Text('Search "fort" Category'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getBroadcasterSubscriptions().then(
                  (value) => _displayDataAlert(
                      value.data.first.userName, value.data.first.tier),
                ),
            child: Text('Get Broadcaster Subscriptions'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getBitsLeaderboard().then(
                  (value) => _displayDataAlert(value.data.first.userName,
                      value.data.first.score.toString()),
                ),
            child: Text('Get Bits Leaderboard'),
          ),
        ],
      ),
    );
  }
}
