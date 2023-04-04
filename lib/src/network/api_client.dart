import 'package:twitch_api/src/network/http_content.dart';
import 'package:twitch_api/src/network/rest_client.dart';

class ApiClient {
  const ApiClient({
    required this.restClient,
  });

  final RestClient restClient;

  Future<Object?> get(
    Iterable<String> pathSegments, {
    Map<String, Object?>? queryParameters,
  }) {
    return restClient.send(
      method: HttpMethod.get,
      pathSegments: pathSegments,
      queryParameters: queryParameters,
    );
  }

  Future<Object?> post(
    Iterable<String> pathSegments, {
    Map<String, Object?>? queryParameters,
    Object? body,
  }) {
    return restClient.send(
      method: HttpMethod.post,
      pathSegments: pathSegments,
      queryParameters: queryParameters,
      content: _createContent(body),
    );
  }

  Future<Object?> patch(
    Iterable<String> pathSegments, {
    Map<String, Object?>? queryParameters,
    Object? body,
  }) {
    return restClient.send(
      method: HttpMethod.patch,
      pathSegments: pathSegments,
      queryParameters: queryParameters,
      content: _createContent(body),
    );
  }

  Future<Object?> delete(
    Iterable<String> pathSegments, {
    Map<String, Object?>? queryParameters,
    Object? body,
  }) {
    return restClient.send(
      method: HttpMethod.delete,
      pathSegments: pathSegments,
      queryParameters: queryParameters,
      content: _createContent(body),
    );
  }

  Future<Object?> put(
    Iterable<String> pathSegments, {
    Map<String, Object?>? queryParameters,
    Object? body,
  }) {
    return restClient.send(
      method: HttpMethod.put,
      pathSegments: pathSegments,
      queryParameters: queryParameters,
      content: _createContent(body),
    );
  }
}

HttpContent? _createContent(Object? body) {
  if (body == null) return null;
  if (body is HttpContent) return body;
  return JsonContent(body);
}
