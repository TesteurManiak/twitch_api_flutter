import 'package:test/test.dart';

import '../utils/twitch_mock_client.dart';

void main() {
  final client = TwitchMockClient();

  group('getChatSettings', () {
    const tBroadcasterId = '1234';

    test('1', () async {
      final settings =
          await client.getChatSettings(broadcasterId: tBroadcasterId);
      expect(settings.length, 1);
    });
  });
}
