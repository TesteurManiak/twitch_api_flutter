import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_channel_editor.freezed.dart';
part 'twitch_channel_editor.g.dart';

/// User who have editor permissions
@freezed
class TwitchChannelEditor with _$TwitchChannelEditor {
  const factory TwitchChannelEditor({
    /// User ID of the editor.
    @JsonKey(name: 'user_id') required String userId,

    /// Display name of the editor.
    @JsonKey(name: 'user_name') required String userName,

    /// Date and time the editor was given editor permissions.
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _TwitchChannelEditor;

  factory TwitchChannelEditor.fromJson(Map<String, dynamic> json) =>
      _$TwitchChannelEditorFromJson(json);
}
