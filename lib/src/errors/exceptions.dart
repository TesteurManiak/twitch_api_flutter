import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class TwitchApiException with _$TwitchApiException implements Exception {
  const factory TwitchApiException({
    required String msg,
  }) = _TwitchApiException;
}
