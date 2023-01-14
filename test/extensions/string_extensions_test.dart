import 'package:test/test.dart';
import 'package:twitch_api/src/extensions/string_extensions.dart';
import 'package:twitch_api/src/models/twitch_stream_info.dart';

void main() {
  group('String Extensions', () {
    test('toStreamType()', () {
      expect('live'.toStreamType(), TwitchStreamType.live);
      expect('error'.toStreamType(), TwitchStreamType.error);
    });
  });
}
