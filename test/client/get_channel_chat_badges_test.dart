import 'package:test/test.dart';

import '../utils/twitch_mock_client.dart';

void main() {
  final client = TwitchMockClient();

  group('getChannelChatBadges', () {
    const tBroadcasterId = '';
    const tBadBroadcasterId = '12345';

    test(
      'if brodcasterId does not match userId throw an assertion exception',
      () async {
        expect(
          () async {
            await client.getChannelChatBadges(broadcasterId: tBadBroadcasterId);
          },
          throwsA(isA<AssertionError>()),
        );
      },
    );

    test('1', () async {
      final badges = await client.getChannelChatBadges(
        broadcasterId: tBroadcasterId,
      );

      expect(badges.length, 2);
    });
  });
}
