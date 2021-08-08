import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

void main() {
  group('TwitchToken', () {
    group('isValid', () {
      test('expiresIn is null', () {
        final token = TwitchToken(
          token: '',
          scope: '',
          tokenType: '',
        );
        expect(token.isValid, false);
      });

      test('expiresIn is superior to 0', () {
        final token = TwitchToken(
          token: 'token',
          scope: '',
          tokenType: '',
          expiresIn: 1,
        );
        expect(token.isValid, true);
      });

      test('expiresIn is equal to 0', () {
        final token = TwitchToken(
          token: 'token',
          scope: '',
          tokenType: '',
          expiresIn: 0,
        );
        expect(token.isValid, false);
      });
    });

    test('fromUrl', () {
      final token = TwitchToken.fromUrl(
        'http://localhost/#access_token=test&token_type=type&scope=scope',
      );
      expect(token.token, 'test');
      expect(token.tokenType, 'type');
      expect(token.scope, 'scope');
    });

    test('fromValidation', () {
      TwitchToken token = TwitchToken.fromUrl(
        'http://localhost/#access_token=test&token_type=type&scope=scope',
      );
      token = TwitchToken.fromValidation(
        token,
        {
          TwitchToken.clientIdEntry: 'clientId',
          TwitchToken.loginEntry: 'login',
          TwitchToken.scopesEntry: ['scope'],
          TwitchToken.userIdEntry: 'userId',
          TwitchToken.expiresInEntry: 1,
        },
      );
      expect(token.clientId, 'clientId');
      expect(token.login, 'login');
      expect(token.scopes, ['scope']);
      expect(token.userId, 'userId');
      expect(token.expiresIn, 1);
    });
  });
}
