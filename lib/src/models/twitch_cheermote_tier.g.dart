// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_cheermote_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheermoteImageSetImpl _$$CheermoteImageSetImplFromJson(
        Map<String, dynamic> json) =>
    _$CheermoteImageSetImpl(
      animated: Map<String, String>.from(json['animated'] as Map),
      staticImgs: Map<String, String>.from(json['static'] as Map),
    );

Map<String, dynamic> _$$CheermoteImageSetImplToJson(
        _$CheermoteImageSetImpl instance) =>
    <String, dynamic>{
      'animated': instance.animated,
      'static': instance.staticImgs,
    };

_$CheermoteImageImpl _$$CheermoteImageImplFromJson(Map<String, dynamic> json) =>
    _$CheermoteImageImpl(
      light: CheermoteImageSet.fromJson(json['light'] as Map<String, dynamic>),
      dark: CheermoteImageSet.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheermoteImageImplToJson(
        _$CheermoteImageImpl instance) =>
    <String, dynamic>{
      'light': instance.light,
      'dark': instance.dark,
    };

_$TwitchCheermoteTierImpl _$$TwitchCheermoteTierImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchCheermoteTierImpl(
      minBits: (json['min_bits'] as num).toInt(),
      id: json['id'] as String,
      color: json['color'] as String,
      images: CheermoteImage.fromJson(json['images'] as Map<String, dynamic>),
      canCheer: json['can_cheer'] as bool,
      showInBitsCard: json['show_in_bits_card'] as bool,
    );

Map<String, dynamic> _$$TwitchCheermoteTierImplToJson(
        _$TwitchCheermoteTierImpl instance) =>
    <String, dynamic>{
      'min_bits': instance.minBits,
      'id': instance.id,
      'color': instance.color,
      'images': instance.images,
      'can_cheer': instance.canCheer,
      'show_in_bits_card': instance.showInBitsCard,
    };
