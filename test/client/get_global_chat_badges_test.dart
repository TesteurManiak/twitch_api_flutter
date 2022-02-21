import 'package:test/test.dart';

import '../utils/twitch_mock_client.dart';

void main() {
  final client = TwitchMockClient();

  group('getGlobalChatBadges', () {
    test('1', () async {
      final badges = await client.getGlobalChatBadges();
      expect(badges.length, 1);
    });
  });
}
