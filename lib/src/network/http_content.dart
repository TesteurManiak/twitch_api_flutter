import 'dart:convert';

import 'package:http/http.dart';

typedef _RequestFactory<T extends BaseRequest> = T Function(
  String method,
  Uri uri,
);

abstract class HttpContent<T extends BaseRequest> {
  const HttpContent._(this._requestFactory);

  final _RequestFactory<T> _requestFactory;

  T createRequest(String method, Uri uri) => _requestFactory(method, uri);

  void applyContentTo(T request);
}

class JsonContent extends HttpContent<Request> {
  const JsonContent(this.data) : super._(_createRequest);

  final Object data;

  @override
  void applyContentTo(Request request) {
    final body = jsonEncode(data);
    request.body = body;
  }
}

class EmptyContent extends HttpContent<Request> {
  const EmptyContent() : super._(_createRequest);

  @override
  void applyContentTo(Request request) {}
}

Request _createRequest(String method, Uri uri) {
  return Request('', Uri());
}
