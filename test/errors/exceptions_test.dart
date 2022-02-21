import 'package:test/test.dart';
import 'package:twitch_api/src/errors/exceptions.dart';

void main() {
  group('TwitchNotConnectedException', () {
    const tMessage = 'not connected';
    const tException = TwitchNotConnectedException(tMessage);

    test('toString', () {
      expect(tException.toString(), 'TwitchException: $tMessage');
    });
  });

  group('TwitchStartCommercialException', () {
    const tMessage = 'start commercial failed';
    const tException = TwitchStartCommercialException(tMessage);

    test('toString', () {
      expect(tException.toString(), 'TwitchException: $tMessage');
    });
  });

  group('TwitchGetExtensionAnalyticsException', () {
    const tMessage = 'get extension analytics failed';
    const tException = TwitchGetExtensionAnalyticsException(tMessage);

    test('toString', () {
      expect(tException.toString(), 'TwitchException: $tMessage');
    });
  });
}
