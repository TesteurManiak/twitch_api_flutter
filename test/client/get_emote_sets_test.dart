import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_emote_type.dart';
import 'package:twitch_api/twitch_api.dart';

import '../test_utils.dart';

void main() {
  final client = TwitchClient(
    clientId: '',
    redirectUri: '',
    twitchHttpClient: TwitchMockProvider(),
  );

  group('getEmoteSets', () {
    test('emoteSetId: 301590448', () async {
      final response = await client.getEmoteSets(emoteSetId: '301590448');
      expect(response.data?.length, 1);
      expect(
        response.template,
        'https://static-cdn.jtvnw.net/emoticons/v2/{{id}}/{{format}}/{{theme_mode}}/{{scale}}',
      );

      final emote = response.data!.first;
      expect(emote.id, '304456832');
      expect(emote.name, 'twitchdevPitchfork');
      expect(emote.emoteType, TwitchEmoteType.subscriptions);
      expect(emote.emoteSetId, '301590448');
      expect(emote.ownerId, '141981764');
    });
  });
}
