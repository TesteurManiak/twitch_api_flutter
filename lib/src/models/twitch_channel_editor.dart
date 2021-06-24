/// User who have editor permissions
class TwitchChannelEditor {
  /// User ID of the editor.
  final String userId;

  /// Display name of the editor.
  final String userName;

  /// Date and time the editor was given editor permissions.
  final DateTime createdAt;

  TwitchChannelEditor({
    required this.userId,
    required this.userName,
    required this.createdAt,
  });

  factory TwitchChannelEditor.fromJson(Map<String, dynamic> json) =>
      TwitchChannelEditor(
        userId: json['user_id'] as String,
        userName: json['user_name'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
      );
}
