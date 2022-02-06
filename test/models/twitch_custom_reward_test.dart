import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_custom_reward.dart';

void main() {
  group('TwitchCustomReward', () {
    test('parse image field', () {
      const tImageJson = <String, dynamic>{
        'url_1x': 'https://static-cdn.jtvnw.net/reward_images/image_1x_1.png',
        'url_2x': 'https://static-cdn.jtvnw.net/reward_images/image_2x_1.png',
        'url_4x': 'https://static-cdn.jtvnw.net/reward_images/image_4x_1.png',
      };
      const tRewardJson = <String, dynamic>{
        'broadcaster_name': 'test',
        'broadcaster_id': 'test',
        'id': 'test',
        'image': tImageJson,
        'background_color': 'test',
        'is_enabled': true,
        'cost': 1,
        'title': 'test',
        'prompt': 'test',
        'is_user_input_required': true,
        'max_per_stream_setting': <String, dynamic>{
          'is_enabled': true,
          'max_per_stream': 1,
        },
        'max_per_user_per_stream_setting': <String, dynamic>{
          'is_enabled': true,
          'max_per_user_per_stream': 1,
        },
        'global_cooldown_setting': <String, dynamic>{
          'is_enabled': true,
          'global_cooldown_seconds': 1,
        },
        'is_paused': true,
        'is_in_stock': true,
        'default_image': tImageJson,
        'should_redemptions_skip_request_queue': true,
      };
      final tImage = TwitchCustomRewardImage.fromJson(tImageJson);

      final reward = TwitchCustomReward.fromJson(tRewardJson);
      expect(reward.image?.url1x, tImage.url1x);
      expect(reward.image?.url2x, tImage.url2x);
      expect(reward.image?.url4x, tImage.url4x);
    });
  });
}
