class TwitchApiException implements Exception {
  final String msg;

  const TwitchApiException(this.msg);

  @override
  String toString() => 'TwitchException: $msg';
}

class TwitchNotConnectedException extends TwitchApiException {
  const TwitchNotConnectedException(String msg) : super(msg);
}

class TwitchStartCommercialException extends TwitchApiException {
  const TwitchStartCommercialException(String msg) : super(msg);
}

class TwitchGetExtensionAnalyticsException extends TwitchApiException {
  const TwitchGetExtensionAnalyticsException(String msg) : super(msg);
}
