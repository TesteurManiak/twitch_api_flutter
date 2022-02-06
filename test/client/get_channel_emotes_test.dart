import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:twitch_api/src/client.dart';

import '../test_utils.dart';

void main() {
  final client = TwitchClient(
    clientId: '',
    redirectUri: '',
    twitchHttpClient: TwitchMockProvider(),
  );

  group('getChannelEmotes', () {
    test('1', () async {
      const tBroadcasterId = '141981764';

      final response =
          await client.getChannelEmotes(broadcasterId: tBroadcasterId);
      expect(response.data?.length, 2);
      expect(
        response.template,
        'https://static-cdn.jtvnw.net/emoticons/v2/{{id}}/{{format}}/{{theme_mode}}/{{scale}}',
      );
    });
  });
}
