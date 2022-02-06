import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_search_channel.dart';

void main() {
  group('TwitchSearchChannel', () {
    test('started_at parsing', () {
      const tJson = <String, dynamic>{
        'game_id': '12345',
        'game_name': 'test',
        'id': '12345',
        'broadcaster_login': 'test',
        'display_name': 'test',
        'broadcaster_language': 'test',
        'title': 'test',
        'thumbnail_url': 'test',
        'is_live': true,
        'started_at': '2020-01-01T00:00:00Z',
        'tag_ids': [],
      };

      final channel = TwitchSearchChannel.fromJson(tJson);
      expect(channel.startedAt, DateTime.parse('2020-01-01T00:00:00Z'));
    });
  });
}
