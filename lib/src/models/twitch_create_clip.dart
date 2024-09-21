import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_create_clip.freezed.dart';
part 'twitch_create_clip.g.dart';

@freezed
class TwitchCreateClip with _$TwitchCreateClip {
  const factory TwitchCreateClip({
    @JsonKey(name: 'edit_url') required String editUrl,
    @JsonKey(name: 'id') required int id,
  }) = _TwitchCreateClip;

  factory TwitchCreateClip.fromJson(Map<String, dynamic> json) => _$TwitchCreateClipFromJson(json);
}
