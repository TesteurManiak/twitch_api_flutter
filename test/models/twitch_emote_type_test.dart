import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_emote_type.dart';

void main() {
  group('TwitchEmoteType', () {
    test('throw an exception if the type is not recognized', () {
      expect(() => 'foo'.toTwitchEmoteType(), throwsException);
    });
  });
}
