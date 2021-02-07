import 'package:flutter/material.dart';
import 'package:twitch_api/twitch_api.dart';

const clientId = "n9dgfacl10ivdy8vlr493qjavykdkn";
const clientSecret = "vo9d9t1r8ah3ey9i3w06758c37p8ad";
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

  @override
  void initState() {
    super.initState();

    if (_twitchClient.accessToken == null) {
      WidgetsBinding.instance.scheduleFrameCallback((_) {
        _twitchClient.openConnectionPage(context, scopes: [
          TwitchApiScope.channelEditCommercial
        ]).then((value) => setState(() {}));
      });
    }
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
            Text('Welcome user: ${_twitchClient?.accessToken?.userId}'),
            Text('Your Twitch token is: ${_twitchClient?.accessToken?.token}'),
            RaisedButton(
              child: Text('Get your Channel info'),
              onPressed: () async =>
                  print(await _twitchClient.getChannelInfo()),
            ),
          ],
        ),
      ),
    );
  }
}
