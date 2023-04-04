// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_cheermote_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheermoteImageSet _$$_CheermoteImageSetFromJson(Map<String, dynamic> json) =>
    _$_CheermoteImageSet(
      animated: Map<String, String>.from(json['animated'] as Map),
      staticImgs: Map<String, String>.from(json['static'] as Map),
    );

Map<String, dynamic> _$$_CheermoteImageSetToJson(
        _$_CheermoteImageSet instance) =>
    <String, dynamic>{
      'animated': instance.animated,
      'static': instance.staticImgs,
    };

_$_CheermoteImage _$$_CheermoteImageFromJson(Map<String, dynamic> json) =>
    _$_CheermoteImage(
      light: CheermoteImageSet.fromJson(json['light'] as Map<String, dynamic>),
      dark: CheermoteImageSet.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CheermoteImageToJson(_$_CheermoteImage instance) =>
    <String, dynamic>{
      'light': instance.light,
      'dark': instance.dark,
    };

_$_TwitchCheermoteTier _$$_TwitchCheermoteTierFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchCheermoteTier(
      minBits: json['min_bits'] as int,
      id: json['id'] as String,
      color: json['color'] as String,
      images: CheermoteImage.fromJson(json['images'] as Map<String, dynamic>),
      canCheer: json['can_cheer'] as bool,
      showInBitsCard: json['show_in_bits_card'] as bool,
    );

Map<String, dynamic> _$$_TwitchCheermoteTierToJson(
        _$_TwitchCheermoteTier instance) =>
    <String, dynamic>{
      'min_bits': instance.minBits,
      'id': instance.id,
      'color': instance.color,
      'images': instance.images,
      'can_cheer': instance.canCheer,
      'show_in_bits_card': instance.showInBitsCard,
    };
