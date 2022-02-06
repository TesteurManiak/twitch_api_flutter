import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_emote_format.dart';

void main() {
  group('TwitchEmoteFormat', () {
    test('throw an exception with unknown format', () {
      expect(() => 'foo'.toTwitchEmoteFormat(), throwsException);
    });
  });
}
