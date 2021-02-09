import 'package:example/webview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:twitch_api/twitch_api.dart';

const clientId = "<YOUR_CLIENT_ID>";
const redirectUri = "http://localhost/";

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
        ]).then((value) => setState(() {}));
      });
    }
  }

  void _displayDataAlert(String method, String data) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(method),
          content: Text(data),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome user: ${_twitchClient.accessToken?.userId}'),
            Text('Your Twitch token is: ${_twitchClient.accessToken?.token}'),
            RaisedButton(
              child: Text('Start Commercial'),
              onPressed: () => _twitchClient
                  .startCommercial(_twitchClient.accessToken.userId, 60)
                  .catchError((error) {
                _displayDataAlert('startCommercial', error.toString());
              }),
            ),
            RaisedButton(
              onPressed: () => _twitchClient
                  .getExtensionAnalytics(first: 1)
                  .catchError((error) {
                _displayDataAlert('getExtensionAnalytics', error.toString());
              }),
              child: Text('Get Extension Analytics'),
            ),
            RaisedButton(
              onPressed: () => _twitchClient
                  .getGameAnalytics(gameId: '493057')
                  .catchError((error) {
                _displayDataAlert('getGameAnalytics', error.toString());
              }),
              child: Text('Get Games Analytics'),
            ),
            RaisedButton(
              onPressed: () => _twitchClient
                  .getUsersFollows(toId: '23161357')
                  .then((value) => _displayDataAlert(
                      'getUsersFollows', 'Total followers: ${value.total}')),
              child: Text('Get Users Follows'),
            ),
          ],
        ),
      ),
    );
  }
}
