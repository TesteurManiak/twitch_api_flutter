import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';
import 'package:twitch_api/src/providers/twitch_dio_provider.dart';
import 'package:twitch_api/twitch_api.dart';

void main() {
  group('TwitchDioProvider', () {
    final dioProvider = TwitchDioProvider(clientId: '');

    DioAdapter(dio: dioProvider.dio)
      ..onGet(
        TwitchClient.oauth2Url.replace(
          pathSegments: <String>[TwitchClient.oauthPath, 'validate'],
        ).toString(),
        (server) => server.reply(200, {
          TwitchToken.clientIdEntry: 'clientId',
          TwitchToken.loginEntry: 'login',
          TwitchToken.scopesEntry: ['scope'],
          TwitchToken.userIdEntry: 'userId',
          TwitchToken.expiresInEntry: 1,
        }),
      )
      ..onGet(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, 'test'],
          queryParameters: {},
        ).toString(),
        (server) => server.reply(200, {'message': 'Success!'}),
      )
      ..onPost(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, 'test'],
          queryParameters: {},
        ).toString(),
        (server) => server.reply(201, {'message': 'Success!'}),
        data: {'data': 'test'},
      )
      ..onPatch(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, 'test'],
          queryParameters: {},
        ).toString(),
        (server) => server.reply(201, {'message': 'Success!'}),
        data: {'data': 'test'},
      )
      ..onDelete(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, 'test'],
        ).toString(),
        (server) => server.reply(201, {'message': 'Success!'}),
      );

    dioProvider.initializeToken(
      TwitchToken.fromUrl(
        'http://localhost/#access_token=test&token_type=type&scope=scope',
      ),
    );

    test('twitchToken', () {
      expect(dioProvider.twitchToken?.token, 'test');
      expect(dioProvider.twitchToken?.tokenType, 'type');
      expect(dioProvider.twitchToken?.scope, 'scope');
    });

    test('validateToken', () async {
      final responseToken = await dioProvider.validateToken();
      expect(responseToken.token, 'test');
      expect(responseToken.tokenType, 'type');
      expect(responseToken.scope, 'scope');
      expect(responseToken.clientId, 'clientId');
      expect(responseToken.login, 'login');
      expect(responseToken.scopes, ['scope']);
      expect(responseToken.userId, 'userId');
      expect(responseToken.expiresIn, 1);
    });

    test('getCall', () async {
      final response =
          await dioProvider.getCall<Map<String, dynamic>>(['test']);
      expect(response['message'], 'Success!');
    });

    test('postCall', () async {
      final response = await dioProvider.postCall<Map<String, dynamic>>(
        ['test'],
        {'data': 'test'},
      );
      expect(response['message'], 'Success!');
    });

    test('patchCall', () async {
      final response = await dioProvider.patchCall<Map<String, dynamic>>(
        ['test'],
        {'data': 'test'},
      );
      expect(response['message'], 'Success!');
    });

    test('deleteCall', () async {
      final response =
          await dioProvider.deleteCall<Map<String, dynamic>>(['test']);
      expect(response?['message'], 'Success!');
    });
  });
}
