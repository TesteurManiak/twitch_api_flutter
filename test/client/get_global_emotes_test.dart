import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_emote_format.dart';
import 'package:twitch_api/src/models/twitch_theme_mode.dart';
import 'package:twitch_api/twitch_api.dart';

import '../test_utils.dart';

void main() {
  final client = TwitchClient(
    clientId: '',
    redirectUri: '',
    twitchHttpClient: TwitchMockProvider(),
  );

  group('getGlobalEmotes', () {
    test('1', () async {
      final response = await client.getGlobalEmotes();
      expect(response.data?.length, 1);
      expect(
        response.template,
        'https://static-cdn.jtvnw.net/emoticons/v2/{{id}}/{{format}}/{{theme_mode}}/{{scale}}',
      );

      final emote = response.data!.first;
      expect(emote.id, '196892');
      expect(emote.name, 'TwitchUnity');
      expect(emote.format, [TwitchEmoteFormat.static]);
      expect(emote.scale, ['1.0', '2.0', '3.0']);
      expect(emote.themeMode, [TwitchThemeMode.light, TwitchThemeMode.dark]);
    });
  });
}
