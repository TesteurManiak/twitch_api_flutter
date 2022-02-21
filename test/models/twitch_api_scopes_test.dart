import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_api_scopes.dart';

void main() {
  group('TwitchApiScope', () {
    test('string getter', () {
      expect(
        TwitchApiScope.analyticsReadExtensions.string,
        'analytics:read:extensions',
      );
      expect(
        TwitchApiScope.analyticsReadGames.string,
        'analytics:read:games',
      );
      expect(
        TwitchApiScope.bitsRead.string,
        'bits:read',
      );
      expect(
        TwitchApiScope.channelEditCommercial.string,
        'channel:edit:commercial',
      );
      expect(
        TwitchApiScope.channelManageBroadcast.string,
        'channel:manage:broadcast',
      );
      expect(
        TwitchApiScope.channelReadEditors.string,
        'channel:read:editors',
      );
      expect(
        TwitchApiScope.channelReadRedemptions.string,
        'channel:read:redemptions',
      );
      expect(
        TwitchApiScope.channelReadSubscriptions.string,
        'channel:read:subscriptions',
      );
      expect(
        TwitchApiScope.userReadEmail.string,
        'user:read:email',
      );
    });
  });
}
