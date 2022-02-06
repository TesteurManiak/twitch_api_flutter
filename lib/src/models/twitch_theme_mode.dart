enum TwitchThemeMode { dark, light }

extension TwitchThemeModeExtension on String {
  TwitchThemeMode toTwitchThemeMode() {
    switch (this) {
      case 'dark':
        return TwitchThemeMode.dark;
      case 'light':
        return TwitchThemeMode.light;
      default:
        throw Exception('Invalid TwitchThemeMode: $this');
    }
  }
}
