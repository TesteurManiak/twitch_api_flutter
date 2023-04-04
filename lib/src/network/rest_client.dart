import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:twitch_api/src/errors/exceptions.dart';
import 'package:twitch_api/src/network/http_content.dart';

enum HttpMethod {
  get('GET'),
  post('POST'),
  delete('DELETE'),
  put('PUT'),
  patch('PATCH');

  const HttpMethod(this.method);

  final String method;
}

class RestClient {
  const RestClient({
    required this.baseUri,
    required this.httpClient,
  });

  final Uri baseUri;
  final Client httpClient;

  Future<Object?> send({
    required HttpMethod method,
    required Iterable<String> pathSegments,
    Map<String, Object?>? queryParameters,
    HttpContent? content,
  }) {
    final uri = baseUri.replace(
      pathSegments: [
        ...baseUri.pathSegments,
        ...pathSegments,
      ],
      queryParameters: queryParameters?.normalize(),
    );

    final effectiveContent = content ?? const EmptyContent();
    final request = Request(method.method, uri);
    return _sendRequest(request, effectiveContent);
  }

  Future<Object?> _sendRequest(
    BaseRequest request,
    HttpContent content,
  ) async {
    try {
      content.applyContentTo(request);

      final response = await httpClient.send(request);

      if (!response.isSuccessful) {
        if (response.statusCode == 401) {
          throw const TwitchUnauthorizedException();
        }

        final body = await response.stream.bytesToString();

        try {
          final json = jsonDecode(body) as Map<String, dynamic>;
          throw TwitchApiException(json.toString());
        } catch (e) {
          throw TwitchApiException(
            '[RestClient] could not parse the response: $body',
          );
        }
      }

      final body = await response.stream.bytesToString();
      if (body.isEmpty) return null;

      final json = jsonDecode(body) as Object;
      return json;
    } catch (e) {
      rethrow;
    }
  }
}

extension on Map<String, Object?> {
  Map<String, Object>? normalize() {
    if (isEmpty) return null;

    final queryParams = <String, Object>{};

    for (final entry in entries) {
      final value = entry.value;
      if (value != null) {
        queryParams[entry.key] = value.toQueryParameter();
      }
    }

    if (queryParams.isEmpty) return null;

    return queryParams;
  }
}

extension on Object {
  Object toQueryParameter({bool root = true}) {
    final obj = this;
    if (obj is String || (obj is Iterable<String> && root)) {
      return obj;
    }

    if (obj is Iterable<Object> && root) {
      return obj.map((e) => e.toQueryParameter(root: false)).toList();
    }

    if (obj is DateTime) {
      return obj.toUtc().toIso8601String();
    }

    return toString();
  }
}

extension on StreamedResponse {
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
