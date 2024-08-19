// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_cheermote_tier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheermoteImageSet _$CheermoteImageSetFromJson(Map<String, dynamic> json) {
  return _CheermoteImageSet.fromJson(json);
}

/// @nodoc
mixin _$CheermoteImageSet {
  Map<String, String> get animated => throw _privateConstructorUsedError;
  @JsonKey(name: 'static')
  Map<String, String> get staticImgs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheermoteImageSetCopyWith<CheermoteImageSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheermoteImageSetCopyWith<$Res> {
  factory $CheermoteImageSetCopyWith(
          CheermoteImageSet value, $Res Function(CheermoteImageSet) then) =
      _$CheermoteImageSetCopyWithImpl<$Res, CheermoteImageSet>;
  @useResult
  $Res call(
      {Map<String, String> animated,
      @JsonKey(name: 'static') Map<String, String> staticImgs});
}

/// @nodoc
class _$CheermoteImageSetCopyWithImpl<$Res, $Val extends CheermoteImageSet>
    implements $CheermoteImageSetCopyWith<$Res> {
  _$CheermoteImageSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animated = null,
    Object? staticImgs = null,
  }) {
    return _then(_value.copyWith(
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      staticImgs: null == staticImgs
          ? _value.staticImgs
          : staticImgs // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheermoteImageSetImplCopyWith<$Res>
    implements $CheermoteImageSetCopyWith<$Res> {
  factory _$$CheermoteImageSetImplCopyWith(_$CheermoteImageSetImpl value,
          $Res Function(_$CheermoteImageSetImpl) then) =
      __$$CheermoteImageSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> animated,
      @JsonKey(name: 'static') Map<String, String> staticImgs});
}

/// @nodoc
class __$$CheermoteImageSetImplCopyWithImpl<$Res>
    extends _$CheermoteImageSetCopyWithImpl<$Res, _$CheermoteImageSetImpl>
    implements _$$CheermoteImageSetImplCopyWith<$Res> {
  __$$CheermoteImageSetImplCopyWithImpl(_$CheermoteImageSetImpl _value,
      $Res Function(_$CheermoteImageSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animated = null,
    Object? staticImgs = null,
  }) {
    return _then(_$CheermoteImageSetImpl(
      animated: null == animated
          ? _value._animated
          : animated // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      staticImgs: null == staticImgs
          ? _value._staticImgs
          : staticImgs // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheermoteImageSetImpl implements _CheermoteImageSet {
  const _$CheermoteImageSetImpl(
      {required final Map<String, String> animated,
      @JsonKey(name: 'static') required final Map<String, String> staticImgs})
      : _animated = animated,
        _staticImgs = staticImgs;

  factory _$CheermoteImageSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheermoteImageSetImplFromJson(json);

  final Map<String, String> _animated;
  @override
  Map<String, String> get animated {
    if (_animated is EqualUnmodifiableMapView) return _animated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_animated);
  }

  final Map<String, String> _staticImgs;
  @override
  @JsonKey(name: 'static')
  Map<String, String> get staticImgs {
    if (_staticImgs is EqualUnmodifiableMapView) return _staticImgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_staticImgs);
  }

  @override
  String toString() {
    return 'CheermoteImageSet(animated: $animated, staticImgs: $staticImgs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheermoteImageSetImpl &&
            const DeepCollectionEquality().equals(other._animated, _animated) &&
            const DeepCollectionEquality()
                .equals(other._staticImgs, _staticImgs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_animated),
      const DeepCollectionEquality().hash(_staticImgs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheermoteImageSetImplCopyWith<_$CheermoteImageSetImpl> get copyWith =>
      __$$CheermoteImageSetImplCopyWithImpl<_$CheermoteImageSetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheermoteImageSetImplToJson(
      this,
    );
  }
}

abstract class _CheermoteImageSet implements CheermoteImageSet {
  const factory _CheermoteImageSet(
      {required final Map<String, String> animated,
      @JsonKey(name: 'static')
      required final Map<String, String> staticImgs}) = _$CheermoteImageSetImpl;

  factory _CheermoteImageSet.fromJson(Map<String, dynamic> json) =
      _$CheermoteImageSetImpl.fromJson;

  @override
  Map<String, String> get animated;
  @override
  @JsonKey(name: 'static')
  Map<String, String> get staticImgs;
  @override
  @JsonKey(ignore: true)
  _$$CheermoteImageSetImplCopyWith<_$CheermoteImageSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheermoteImage _$CheermoteImageFromJson(Map<String, dynamic> json) {
  return _CheermoteImage.fromJson(json);
}

/// @nodoc
mixin _$CheermoteImage {
  CheermoteImageSet get light => throw _privateConstructorUsedError;
  CheermoteImageSet get dark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheermoteImageCopyWith<CheermoteImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheermoteImageCopyWith<$Res> {
  factory $CheermoteImageCopyWith(
          CheermoteImage value, $Res Function(CheermoteImage) then) =
      _$CheermoteImageCopyWithImpl<$Res, CheermoteImage>;
  @useResult
  $Res call({CheermoteImageSet light, CheermoteImageSet dark});

  $CheermoteImageSetCopyWith<$Res> get light;
  $CheermoteImageSetCopyWith<$Res> get dark;
}

/// @nodoc
class _$CheermoteImageCopyWithImpl<$Res, $Val extends CheermoteImage>
    implements $CheermoteImageCopyWith<$Res> {
  _$CheermoteImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_value.copyWith(
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as CheermoteImageSet,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as CheermoteImageSet,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheermoteImageSetCopyWith<$Res> get light {
    return $CheermoteImageSetCopyWith<$Res>(_value.light, (value) {
      return _then(_value.copyWith(light: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CheermoteImageSetCopyWith<$Res> get dark {
    return $CheermoteImageSetCopyWith<$Res>(_value.dark, (value) {
      return _then(_value.copyWith(dark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheermoteImageImplCopyWith<$Res>
    implements $CheermoteImageCopyWith<$Res> {
  factory _$$CheermoteImageImplCopyWith(_$CheermoteImageImpl value,
          $Res Function(_$CheermoteImageImpl) then) =
      __$$CheermoteImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CheermoteImageSet light, CheermoteImageSet dark});

  @override
  $CheermoteImageSetCopyWith<$Res> get light;
  @override
  $CheermoteImageSetCopyWith<$Res> get dark;
}

/// @nodoc
class __$$CheermoteImageImplCopyWithImpl<$Res>
    extends _$CheermoteImageCopyWithImpl<$Res, _$CheermoteImageImpl>
    implements _$$CheermoteImageImplCopyWith<$Res> {
  __$$CheermoteImageImplCopyWithImpl(
      _$CheermoteImageImpl _value, $Res Function(_$CheermoteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$CheermoteImageImpl(
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as CheermoteImageSet,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as CheermoteImageSet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheermoteImageImpl implements _CheermoteImage {
  const _$CheermoteImageImpl({required this.light, required this.dark});

  factory _$CheermoteImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheermoteImageImplFromJson(json);

  @override
  final CheermoteImageSet light;
  @override
  final CheermoteImageSet dark;

  @override
  String toString() {
    return 'CheermoteImage(light: $light, dark: $dark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheermoteImageImpl &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, light, dark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheermoteImageImplCopyWith<_$CheermoteImageImpl> get copyWith =>
      __$$CheermoteImageImplCopyWithImpl<_$CheermoteImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheermoteImageImplToJson(
      this,
    );
  }
}

abstract class _CheermoteImage implements CheermoteImage {
  const factory _CheermoteImage(
      {required final CheermoteImageSet light,
      required final CheermoteImageSet dark}) = _$CheermoteImageImpl;

  factory _CheermoteImage.fromJson(Map<String, dynamic> json) =
      _$CheermoteImageImpl.fromJson;

  @override
  CheermoteImageSet get light;
  @override
  CheermoteImageSet get dark;
  @override
  @JsonKey(ignore: true)
  _$$CheermoteImageImplCopyWith<_$CheermoteImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchCheermoteTier _$TwitchCheermoteTierFromJson(Map<String, dynamic> json) {
  return _TwitchCheermoteTier.fromJson(json);
}

/// @nodoc
mixin _$TwitchCheermoteTier {
  /// Minimum number of bits needed to be used to hit the given tier of emote.
  @JsonKey(name: 'min_bits')
  int get minBits => throw _privateConstructorUsedError;

  /// ID of the emote tier. Possible tiers are: 1,100,500,1000,5000, 10k, or
  /// 100k.
  String get id => throw _privateConstructorUsedError;

  /// Hex code for the color associated with the bits of that tier. Grey,
  /// Purple, Teal, Blue, or Red color to match the base bit type.
  String get color => throw _privateConstructorUsedError;

  /// Structure containing both animated and static image sets, sorted by light
  /// and dark.
  CheermoteImage get images => throw _privateConstructorUsedError;

  /// Indicates whether or not emote information is accessible to users.
  @JsonKey(name: 'can_cheer')
  bool get canCheer => throw _privateConstructorUsedError;

  /// Indicates whether or not we hide the emote from the bits card.
  @JsonKey(name: 'show_in_bits_card')
  bool get showInBitsCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchCheermoteTierCopyWith<TwitchCheermoteTier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCheermoteTierCopyWith<$Res> {
  factory $TwitchCheermoteTierCopyWith(
          TwitchCheermoteTier value, $Res Function(TwitchCheermoteTier) then) =
      _$TwitchCheermoteTierCopyWithImpl<$Res, TwitchCheermoteTier>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_bits') int minBits,
      String id,
      String color,
      CheermoteImage images,
      @JsonKey(name: 'can_cheer') bool canCheer,
      @JsonKey(name: 'show_in_bits_card') bool showInBitsCard});

  $CheermoteImageCopyWith<$Res> get images;
}

/// @nodoc
class _$TwitchCheermoteTierCopyWithImpl<$Res, $Val extends TwitchCheermoteTier>
    implements $TwitchCheermoteTierCopyWith<$Res> {
  _$TwitchCheermoteTierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minBits = null,
    Object? id = null,
    Object? color = null,
    Object? images = null,
    Object? canCheer = null,
    Object? showInBitsCard = null,
  }) {
    return _then(_value.copyWith(
      minBits: null == minBits
          ? _value.minBits
          : minBits // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as CheermoteImage,
      canCheer: null == canCheer
          ? _value.canCheer
          : canCheer // ignore: cast_nullable_to_non_nullable
              as bool,
      showInBitsCard: null == showInBitsCard
          ? _value.showInBitsCard
          : showInBitsCard // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheermoteImageCopyWith<$Res> get images {
    return $CheermoteImageCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchCheermoteTierImplCopyWith<$Res>
    implements $TwitchCheermoteTierCopyWith<$Res> {
  factory _$$TwitchCheermoteTierImplCopyWith(_$TwitchCheermoteTierImpl value,
          $Res Function(_$TwitchCheermoteTierImpl) then) =
      __$$TwitchCheermoteTierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_bits') int minBits,
      String id,
      String color,
      CheermoteImage images,
      @JsonKey(name: 'can_cheer') bool canCheer,
      @JsonKey(name: 'show_in_bits_card') bool showInBitsCard});

  @override
  $CheermoteImageCopyWith<$Res> get images;
}

/// @nodoc
class __$$TwitchCheermoteTierImplCopyWithImpl<$Res>
    extends _$TwitchCheermoteTierCopyWithImpl<$Res, _$TwitchCheermoteTierImpl>
    implements _$$TwitchCheermoteTierImplCopyWith<$Res> {
  __$$TwitchCheermoteTierImplCopyWithImpl(_$TwitchCheermoteTierImpl _value,
      $Res Function(_$TwitchCheermoteTierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minBits = null,
    Object? id = null,
    Object? color = null,
    Object? images = null,
    Object? canCheer = null,
    Object? showInBitsCard = null,
  }) {
    return _then(_$TwitchCheermoteTierImpl(
      minBits: null == minBits
          ? _value.minBits
          : minBits // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as CheermoteImage,
      canCheer: null == canCheer
          ? _value.canCheer
          : canCheer // ignore: cast_nullable_to_non_nullable
              as bool,
      showInBitsCard: null == showInBitsCard
          ? _value.showInBitsCard
          : showInBitsCard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchCheermoteTierImpl implements _TwitchCheermoteTier {
  const _$TwitchCheermoteTierImpl(
      {@JsonKey(name: 'min_bits') required this.minBits,
      required this.id,
      required this.color,
      required this.images,
      @JsonKey(name: 'can_cheer') required this.canCheer,
      @JsonKey(name: 'show_in_bits_card') required this.showInBitsCard});

  factory _$TwitchCheermoteTierImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchCheermoteTierImplFromJson(json);

  /// Minimum number of bits needed to be used to hit the given tier of emote.
  @override
  @JsonKey(name: 'min_bits')
  final int minBits;

  /// ID of the emote tier. Possible tiers are: 1,100,500,1000,5000, 10k, or
  /// 100k.
  @override
  final String id;

  /// Hex code for the color associated with the bits of that tier. Grey,
  /// Purple, Teal, Blue, or Red color to match the base bit type.
  @override
  final String color;

  /// Structure containing both animated and static image sets, sorted by light
  /// and dark.
  @override
  final CheermoteImage images;

  /// Indicates whether or not emote information is accessible to users.
  @override
  @JsonKey(name: 'can_cheer')
  final bool canCheer;

  /// Indicates whether or not we hide the emote from the bits card.
  @override
  @JsonKey(name: 'show_in_bits_card')
  final bool showInBitsCard;

  @override
  String toString() {
    return 'TwitchCheermoteTier(minBits: $minBits, id: $id, color: $color, images: $images, canCheer: $canCheer, showInBitsCard: $showInBitsCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchCheermoteTierImpl &&
            (identical(other.minBits, minBits) || other.minBits == minBits) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.canCheer, canCheer) ||
                other.canCheer == canCheer) &&
            (identical(other.showInBitsCard, showInBitsCard) ||
                other.showInBitsCard == showInBitsCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, minBits, id, color, images, canCheer, showInBitsCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchCheermoteTierImplCopyWith<_$TwitchCheermoteTierImpl> get copyWith =>
      __$$TwitchCheermoteTierImplCopyWithImpl<_$TwitchCheermoteTierImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchCheermoteTierImplToJson(
      this,
    );
  }
}

abstract class _TwitchCheermoteTier implements TwitchCheermoteTier {
  const factory _TwitchCheermoteTier(
      {@JsonKey(name: 'min_bits') required final int minBits,
      required final String id,
      required final String color,
      required final CheermoteImage images,
      @JsonKey(name: 'can_cheer') required final bool canCheer,
      @JsonKey(name: 'show_in_bits_card')
      required final bool showInBitsCard}) = _$TwitchCheermoteTierImpl;

  factory _TwitchCheermoteTier.fromJson(Map<String, dynamic> json) =
      _$TwitchCheermoteTierImpl.fromJson;

  @override

  /// Minimum number of bits needed to be used to hit the given tier of emote.
  @JsonKey(name: 'min_bits')
  int get minBits;
  @override

  /// ID of the emote tier. Possible tiers are: 1,100,500,1000,5000, 10k, or
  /// 100k.
  String get id;
  @override

  /// Hex code for the color associated with the bits of that tier. Grey,
  /// Purple, Teal, Blue, or Red color to match the base bit type.
  String get color;
  @override

  /// Structure containing both animated and static image sets, sorted by light
  /// and dark.
  CheermoteImage get images;
  @override

  /// Indicates whether or not emote information is accessible to users.
  @JsonKey(name: 'can_cheer')
  bool get canCheer;
  @override

  /// Indicates whether or not we hide the emote from the bits card.
  @JsonKey(name: 'show_in_bits_card')
  bool get showInBitsCard;
  @override
  @JsonKey(ignore: true)
  _$$TwitchCheermoteTierImplCopyWith<_$TwitchCheermoteTierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
