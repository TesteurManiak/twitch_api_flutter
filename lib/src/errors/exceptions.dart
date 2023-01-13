class TwitchApiException implements Exception {
  final String msg;

  const TwitchApiException(this.msg);

  @override
  String toString() => 'TwitchException: $msg';
}

class TwitchNotConnectedException extends TwitchApiException {
  const TwitchNotConnectedException(super.msg);
}

class TwitchStartCommercialException extends TwitchApiException {
  const TwitchStartCommercialException(super.msg);
}

class TwitchGetExtensionAnalyticsException extends TwitchApiException {
  const TwitchGetExtensionAnalyticsException(super.msg);
}
