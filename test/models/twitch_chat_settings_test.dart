import 'dart:convert';

import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_chat_settings.dart';

import '../utils/test_utils.dart';

void main() {
  group('TwitchChatSettings', () {
    test('parse: get_chat_settings.json', () async {
      final json =
          jsonDecode(await readFileStringAsync('get_chat_settings.json'))
              as Map<String, dynamic>;
      final settingsJson =
          (json['data'] as Iterable).first as Map<String, dynamic>;
      final settings = TwitchChatSettings.fromJson(settingsJson);

      expect(settings.broadcasterId, '713936733');
      expect(settings.slowMode, false);
      expect(settings.slowModeWaitTime, isNull);
      expect(settings.followerMode, true);
      expect(settings.followerModeDuration, 0);
      expect(settings.subscriberMode, false);
      expect(settings.emoteMode, false);
      expect(settings.uniqueChatMode, false);
      expect(settings.nonModeratorChatDelay, true);
      expect(settings.nonModeratorChatDelayDuration, 4);
    });
  });
}
