import 'package:test/test.dart';
import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';
import 'package:twitch_api/src/extensions/string_extensions.dart';
import 'package:twitch_api/src/models/twitch_cheermote_type.dart';
import 'package:twitch_api/src/models/twitch_custom_reward_redemption.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_stream_info.dart';
import 'package:twitch_api/src/models/twitch_user.dart';

void main() {
  group('String Extensions', () {
    test('toStreamType()', () {
      expect('live'.toStreamType(), TwitchStreamType.live);
      expect('error'.toStreamType(), TwitchStreamType.error);
    });

    test('toCheermoteType()', () {
      expect(
        'global_first_party'.toCheermoteType(),
        TwitchCheermoteType.globalFirstParty,
      );
      expect(
        'global_third_party'.toCheermoteType(),
        TwitchCheermoteType.globalThirdParty,
      );
      expect(
        'channel_custom'.toCheermoteType(),
        TwitchCheermoteType.channelCustom,
      );
      expect(
        'display_only'.toCheermoteType(),
        TwitchCheermoteType.displayOnly,
      );
      expect(
        'sponsored'.toCheermoteType(),
        TwitchCheermoteType.sponsored,
      );
      expect(
        () => 'error'.toCheermoteType(),
        throwsA(isA<TwitchApiException>()),
      );
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

    test('toBroadcasterType()', () {
      expect('partner'.toBroadcasterType(), TwitchBroadcasterType.partner);
      expect('affiliate'.toBroadcasterType(), TwitchBroadcasterType.affiliate);
      expect(''.toBroadcasterType(), TwitchBroadcasterType.none);
    });
  });
}
