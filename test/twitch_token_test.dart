import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

void main() {
  group('TwitchToken', () {
    group('isValid', () {
      test('expiresIn is equal to 0', () {
        final token = TwitchToken(
          token: 'token',
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

    group('copyWith', () {
      test('clientId', () {
        TwitchToken token = TwitchToken(
          token: '',
          scope: '',
          tokenType: '',
          clientId: 'test',
        );
        expect(token.clientId, 'test');
        token = token.copyWith(clientId: 'test2');
        expect(token.clientId, 'test2');
      });

      test('login', () {
        TwitchToken token = TwitchToken(
          token: '',
          scope: '',
          tokenType: '',
          login: 'test',
        );
        expect(token.login, 'test');
        token = token.copyWith(login: 'test2');
        expect(token.login, 'test2');
      });

      test('scopes', () {
        TwitchToken token = TwitchToken(
          token: '',
          scope: '',
          tokenType: '',
          scopes: [],
        );
        expect(token.scopes, []);
        token = token.copyWith(scopes: ['test']);
        expect(token.scopes, ['test']);
      });

      test('userId', () {
        TwitchToken token = TwitchToken(
          token: '',
          scope: '',
          tokenType: '',
          userId: 'test',
        );
        expect(token.userId, 'test');
        token = token.copyWith(userId: 'test2');
        expect(token.userId, 'test2');
      });

      test('expiresIn', () {
        TwitchToken token = TwitchToken(
          token: '',
          scope: '',
          tokenType: '',
        );
        expect(token.expiresIn, 0);
        token = token.copyWith(expiresIn: 3600);
        expect(token.expiresIn, 3600);
      });
    });
  });
}
