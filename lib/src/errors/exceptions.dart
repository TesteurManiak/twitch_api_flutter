class TwitchApiException implements Exception {
  const TwitchApiException([this.msg]);

  final String? msg;

  @override
  String toString() {
    return '[TwitchApiException] - $msg';
  }
}

class TwitchUnauthorizedException extends TwitchApiException {
  const TwitchUnauthorizedException([super.msg]);
}
