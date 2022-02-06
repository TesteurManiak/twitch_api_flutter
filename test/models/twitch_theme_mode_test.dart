import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_theme_mode.dart';

void main() {
  group('TwitchThemeMode', () {
    test('throw an exception if the mode is not recognized', () {
      expect(() => 'foo'.toTwitchThemeMode(), throwsException);
    });
  });
}
