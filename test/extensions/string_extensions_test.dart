import 'package:test/test.dart';
import 'package:twitch_api/src/errors/exceptions.dart';
import 'package:twitch_api/src/extensions/string_extensions.dart';
import 'package:twitch_api/src/models/twitch_custom_reward_redemption.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_stream_info.dart';

void main() {
  group('String Extensions', () {
    test('toStreamType()', () {
      expect('live'.toStreamType(), TwitchStreamType.live);
      expect('error'.toStreamType(), TwitchStreamType.error);
    });

    test('toTransactionProductType()', () {
      expect(
        'BITS_IN_EXTENSION'.toTransactionProductType(),
        TwitchExtensionTransactionProductType.bitsInExtension,
      );
      expect(
        () => 'BITS_IN_CHANNEL'.toTransactionProductType(),
        throwsA(isA<TwitchApiException>()),
      );
    });

    test('toRewardRedemptionStatus()', () {
      expect(
        'UNFULFILLED'.toRewardRedemptionStatus(),
        TwitchRewardRedemptionStatus.unfulfilled,
      );
      expect(
        'FULFILLED'.toRewardRedemptionStatus(),
        TwitchRewardRedemptionStatus.fulfilled,
      );
      expect(
        'CANCELED'.toRewardRedemptionStatus(),
        TwitchRewardRedemptionStatus.canceled,
      );
      expect(
        () => 'error'.toRewardRedemptionStatus(),
        throwsA(isA<TwitchApiException>()),
      );
    });
  });
}
