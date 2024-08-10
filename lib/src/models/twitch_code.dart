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
    final content = url.split('/?').last;
    final datas = content.split('&');
    return TwitchCode(
      code: datas.firstWhere((e) => e.startsWith(_codeKey)).substring(_codeKey.length),
      state: datas.firstWhere((e) => e.startsWith(_stateKey)).substring(_stateKey.length),
      scope: datas.firstWhere((e) => e.startsWith(_scopeKey)).substring(_scopeKey.length),
    );
  }

  const TwitchCode._();
  static const _codeKey = 'code=';
  static const _stateKey = 'state=';
  static const _scopeKey = 'scope=';

  static const codeEntry = 'code';
  static const stateEntry = 'state';
  static const scopeEntry = 'scope';
}
