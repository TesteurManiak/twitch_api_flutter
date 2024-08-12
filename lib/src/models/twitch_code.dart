import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_code.freezed.dart';

@freezed
class TwitchCode with _$TwitchCode {
  const factory TwitchCode({
    required String code,
    required String state,
    required String scope,
    List<String>? scopes,
  }) = _TwitchCode;
  factory TwitchCode.fromValidation(
    TwitchCode incompleteToken,
    Map<String, dynamic> json,
  ) {
    return incompleteToken.copyWith(
      code: json[codeEntry] as String,
      state: json[stateEntry] as String,
      scopes: List<String>.from(json[scopeEntry] as Iterable),
    );
  }

  factory TwitchCode.fromUrl(String url) {
    final uri = Uri.parse(url);
    return TwitchCode(
      code: uri.queryParameters[codeEntry]!,
      state: uri.queryParameters[stateEntry]!,
      scope: uri.queryParameters[scopeEntry]!,
    );
  }

  static const codeEntry = 'code';
  static const stateEntry = 'state';
  static const scopeEntry = 'scope';
}
