import 'package:mocktail/mocktail.dart';
import 'package:twitch_api/src/client.dart';
import 'package:twitch_api/src/providers/twitch_http_client.dart';

class MockClient extends Mock implements TwitchClient {}

class MockTwitchHttpClient extends Mock implements TwitchHttpClient {}
