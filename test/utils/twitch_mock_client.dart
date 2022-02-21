import 'package:twitch_api/src/client.dart';

import 'twitch_mock_http_client.dart';

class TwitchMockClient extends TwitchClient {
  TwitchMockClient()
      : super(
          clientId: '',
          redirectUri: '',
          twitchHttpClient: TwitchMockHttpClient(),
        );
}
