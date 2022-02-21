import 'dart:convert';

import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_chat_badge.dart';

import '../utils/test_utils.dart';

void main() {
  group('TwitchChatBadge', () {
    test('parse: get_channel_chat_badges.json', () async {
      // TwitchChatBadge
      final json =
          jsonDecode(await readFileStringAsync('get_channel_chat_badges.json'))
              as Map<String, dynamic>;
      final badgeJson =
          (json['data'] as Iterable).first as Map<String, dynamic>;
      final badge = TwitchChatBadge.fromJson(badgeJson);
      expect(badge.setId, 'bits');
      expect(badge.versions.length, 1);

      // BadgeVersion
      final version = badge.versions.first;
      expect(version.id, '1');
      expect(
        version.smallImageUrl,
        'https://static-cdn.jtvnw.net/badges/v1/743a0f3b-84b3-450b-96a0-503d7f4a9764/1',
      );
      expect(
        version.mediumImageUrl,
        'https://static-cdn.jtvnw.net/badges/v1/743a0f3b-84b3-450b-96a0-503d7f4a9764/2',
      );
      expect(
        version.largeImageUrl,
        'https://static-cdn.jtvnw.net/badges/v1/743a0f3b-84b3-450b-96a0-503d7f4a9764/3',
      );
    });
  });
}
