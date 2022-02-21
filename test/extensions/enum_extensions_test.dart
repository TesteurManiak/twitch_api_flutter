import 'package:test/test.dart';
import 'package:twitch_api/src/extensions/enum_extensions.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_time_period.dart';

void main() {
  group('Enum Extensions', () {
    test('TwitchTimePeriodModifier', () {
      expect(TwitchTimePeriod.all.string, 'all');
      expect(TwitchTimePeriod.day.string, 'day');
      expect(TwitchTimePeriod.week.string, 'week');
      expect(TwitchTimePeriod.month.string, 'month');
      expect(TwitchTimePeriod.year.string, 'year');
    });

    test('TwitchExtensionTransactionProductTypeModifier', () {
      expect(
        TwitchExtensionTransactionProductType.bitsInExtension.string,
        'bitsInExtension',
      );
    });
  });
}
