import 'package:freezed_annotation/freezed_annotation.dart';

enum TwitchEmoteFormat {
  @JsonValue('animated')
  animated,
  @JsonValue('static')
  static,
}
