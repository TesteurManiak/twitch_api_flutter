import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_token.dart';
import 'package:twitch_api/src/providers/twitch_dio_provider.dart';
import 'package:twitch_api/twitch_api.dart';

void main() {
  group('TwitchDioProvider', () {
    final _dio = Dio();

    DioAdapter(dio: _dio)
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

    final _dioProvider = TwitchDioProvider(clientId: '', dio: _dio)
      ..initializeToken(
        TwitchToken.fromUrl(
          'http://localhost/#access_token=test&token_type=type&scope=scope',
        ),
      );

    test('twitchToken', () {
      expect(_dioProvider.twitchToken.token, 'test');
      expect(_dioProvider.twitchToken.tokenType, 'type');
      expect(_dioProvider.twitchToken.scope, 'scope');
    });

    test('validateToken', () async {
      final responseToken = await _dioProvider.validateToken();
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
          await _dioProvider.getCall(['test']) as Map<String, dynamic>;
      expect(response['message'], 'Success!');
    });

    test('postCall', () async {
      final response = await _dioProvider.postCall(
        ['test'],
        {'data': 'test'},
      ) as Map<String, dynamic>;
      expect(response['message'], 'Success!');
    });

    test('patchCall', () async {
      final response = await _dioProvider.patchCall(
        ['test'],
        {'data': 'test'},
      ) as Map<String, dynamic>;
      expect(response['message'], 'Success!');
    });

    test('deleteCall', () async {
      final response =
          await _dioProvider.deleteCall(['test']) as Map<String, dynamic>;
      expect(response['message'], 'Success!');
    });
  });
}
