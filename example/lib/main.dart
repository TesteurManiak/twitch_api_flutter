import 'package:example/webview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:twitch_api/twitch_api.dart';

const clientId = 'n9dgfacl10ivdy8vlr493qjavykdkn';
const redirectUri = 'http://localhost:8080/static.html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    ).then((_) => _twitchClient.twitchHttpClient.validateToken());
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.scheduleFrameCallback((_) {
      _openConnectionPage(scopes: TwitchApiScope.values)
          .then((value) => setState(() {}));
    });
  }

  void _displayDataAlert({
    String? method,
    String? data,
    bool isImg = false,
    bool? isOnline,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(method ?? ''),
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
              if (!isImg && data != null) Text(data),
              if (isImg && data != null)
                Image.network(
                  data,
                  loadingBuilder: (_, __, ___) =>
                      const CircularProgressIndicator(),
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            'Welcome user: ${_twitchClient.twitchHttpClient.twitchToken?.userId}',
          ),
          Text(
            'Your Twitch token is: ${_twitchClient.twitchHttpClient.twitchToken?.token}',
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .startCommercial(
              broadcasterId:
                  _twitchClient.twitchHttpClient.twitchToken!.userId!,
              length: 60,
            )
                .catchError((error) {
              _displayDataAlert(
                method: 'startCommercial',
                data: error.toString(),
              );
            }),
            child: const Text('Start Commercial'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getExtensionAnalytics(first: 1)
                .catchError((error) {
              _displayDataAlert(
                method: 'getExtensionAnalytics',
                data: error.toString(),
              );
            }),
            child: const Text('Get Extension Analytics'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getGameAnalytics(gameId: '493057')
                .catchError((error) {
              _displayDataAlert(
                method: 'getGameAnalytics',
                data: error.toString(),
              );
            }),
            child: const Text('Get Games Analytics'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.getUsersFollows(toId: '23161357').then(
                      (value) => _displayDataAlert(
                        method: 'getUsersFollows',
                        data: 'Total followers: ${value.total}',
                      ),
                    ),
            child: const Text('Get User Follows from id 23161357'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getUsers(ids: ['44322889']).then(
              (value) => _displayDataAlert(
                method: value.data?.first.displayName,
                data: value.data?.first.description,
              ),
            ),
            child: const Text('Get User Dallas from id'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getTopGames().then(
                  (value) => _displayDataAlert(
                    method: 'Top Games',
                    data: value.data
                        ?.map<String>((e) => e.name)
                        .toList()
                        .join('\n'),
                  ),
                ),
            child: const Text('Get Top Games'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getGames(names: ['Fortnite']).then(
              (value) => _displayDataAlert(
                method: value.data?.first.name,
                data: value.data?.first.getBoxArtUrl(),
                isImg: true,
              ),
            ),
            child: const Text('Get Fortnite'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.getChannelInformations('44445592').then(
                      (value) => _displayDataAlert(
                        method: value.data?.first.broadcasterName,
                        data: value.data?.first.title,
                      ),
                    ),
            child: const Text('Get Pokimane Channel Info'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.getStreams(userLogins: ['auronplay']).then(
              (value) => _displayDataAlert(
                method: (value.data?.isNotEmpty ?? false)
                    ? value.data?.first.userLogin
                    : 'getStreams',
                data:
                    'Viewers: ${(value.data?.isNotEmpty ?? false) ? value.data?.first.viewerCount : "No data"}',
                isOnline: (value.data?.isNotEmpty ?? false)
                    ? value.data?.first.type == TwitchStreamType.live
                    : false,
              ),
            ),
            child: const Text('Get auronplay Stream Info'),
          ),
          ElevatedButton(
            onPressed: () =>
                _twitchClient.searchChannels(query: 'loserfruit').then(
              (value) {
                _displayDataAlert(
                  method: value.data?.first.displayName,
                  data: value.data?.first.thumbnailUrl,
                  isImg: true,
                  isOnline: value.data?.first.isLive,
                );
              },
            ),
            child: const Text('Search loserfruit Channel'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.searchCategories(query: 'fort').then(
                  (value) => _displayDataAlert(
                    method: value.data?.first.name,
                    data: value.data?.first.getBoxArtUrl(),
                    isImg: true,
                  ),
                ),
            child: const Text('Search "fort" Category'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getBroadcasterSubscriptions().then(
                  (value) => _displayDataAlert(
                    method: value.data?.first.userName,
                    data: value.data?.first.tier,
                  ),
                ),
            child: const Text('Get Broadcaster Subscriptions'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getBitsLeaderboard().then(
                  (value) => _displayDataAlert(
                    method: value.data?.first.userName,
                    data: value.data?.first.score.toString(),
                  ),
                ),
            child: const Text('Get Bits Leaderboard'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getCheermotes().then(
                  (value) => _displayDataAlert(
                    method: value.data?.first.prefix,
                    data: value.data?.first.tiers
                        .map((e) => e.id)
                        .toList()
                        .toString(),
                  ),
                ),
            child: const Text('Get Cheermotes'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.modifyChannelinformation(
              broadcasterId:
                  _twitchClient.twitchHttpClient.twitchToken!.userId!,
              title: 'Test',
            ),
            child: const Text('Modify your channel title to: Test'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient
                .getChannelEditors(
                  broadcasterId:
                      _twitchClient.twitchHttpClient.twitchToken!.userId!,
                )
                .then(
                  (value) => _displayDataAlert(
                    method: 'You have ${value.data?.length} editors',
                    data: value.data?.map<String>((e) => e.userName).join(', '),
                  ),
                ),
            child: const Text('Get your channel editors'),
          ),
          ElevatedButton(
            onPressed: () => _twitchClient.getCustomRewards().then(
                  (value) => _displayDataAlert(
                    method: 'Get Custom Rewards',
                    data: value.data?.map<String>((e) => e.title).join(', '),
                  ),
                ),
            child: const Text('Get custom rewards'),
          ),
        ],
      ),
    );
  }
}
