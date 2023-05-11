import 'package:freezed_annotation/freezed_annotation.dart';

enum TwitchCheermoteType {
  @JsonValue('global_first_party')
  globalFirstParty,
  @JsonValue('global_third_party')
  globalThirdParty,
  @JsonValue('channel_custom')
  channelCustom,
  @JsonValue('display_only')
  displayOnly,
  @JsonValue('sponsored')
  sponsored,
}
