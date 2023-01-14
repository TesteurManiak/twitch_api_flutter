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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_CheermoteImageSetCopyWith<$Res>
    implements $CheermoteImageSetCopyWith<$Res> {
  factory _$$_CheermoteImageSetCopyWith(_$_CheermoteImageSet value,
          $Res Function(_$_CheermoteImageSet) then) =
      __$$_CheermoteImageSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> animated,
      @JsonKey(name: 'static') Map<String, String> staticImgs});
}

/// @nodoc
class __$$_CheermoteImageSetCopyWithImpl<$Res>
    extends _$CheermoteImageSetCopyWithImpl<$Res, _$_CheermoteImageSet>
    implements _$$_CheermoteImageSetCopyWith<$Res> {
  __$$_CheermoteImageSetCopyWithImpl(
      _$_CheermoteImageSet _value, $Res Function(_$_CheermoteImageSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animated = null,
    Object? staticImgs = null,
  }) {
    return _then(_$_CheermoteImageSet(
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
class _$_CheermoteImageSet implements _CheermoteImageSet {
  const _$_CheermoteImageSet(
      {required final Map<String, String> animated,
      @JsonKey(name: 'static') required final Map<String, String> staticImgs})
      : _animated = animated,
        _staticImgs = staticImgs;

  factory _$_CheermoteImageSet.fromJson(Map<String, dynamic> json) =>
      _$$_CheermoteImageSetFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheermoteImageSet &&
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
  _$$_CheermoteImageSetCopyWith<_$_CheermoteImageSet> get copyWith =>
      __$$_CheermoteImageSetCopyWithImpl<_$_CheermoteImageSet>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheermoteImageSetToJson(
      this,
    );
  }
}

abstract class _CheermoteImageSet implements CheermoteImageSet {
  const factory _CheermoteImageSet(
          {required final Map<String, String> animated,
          @JsonKey(name: 'static')
              required final Map<String, String> staticImgs}) =
      _$_CheermoteImageSet;

  factory _CheermoteImageSet.fromJson(Map<String, dynamic> json) =
      _$_CheermoteImageSet.fromJson;

  @override
  Map<String, String> get animated;
  @override
  @JsonKey(name: 'static')
  Map<String, String> get staticImgs;
  @override
  @JsonKey(ignore: true)
  _$$_CheermoteImageSetCopyWith<_$_CheermoteImageSet> get copyWith =>
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
abstract class _$$_CheermoteImageCopyWith<$Res>
    implements $CheermoteImageCopyWith<$Res> {
  factory _$$_CheermoteImageCopyWith(
          _$_CheermoteImage value, $Res Function(_$_CheermoteImage) then) =
      __$$_CheermoteImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CheermoteImageSet light, CheermoteImageSet dark});

  @override
  $CheermoteImageSetCopyWith<$Res> get light;
  @override
  $CheermoteImageSetCopyWith<$Res> get dark;
}

/// @nodoc
class __$$_CheermoteImageCopyWithImpl<$Res>
    extends _$CheermoteImageCopyWithImpl<$Res, _$_CheermoteImage>
    implements _$$_CheermoteImageCopyWith<$Res> {
  __$$_CheermoteImageCopyWithImpl(
      _$_CheermoteImage _value, $Res Function(_$_CheermoteImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$_CheermoteImage(
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
class _$_CheermoteImage implements _CheermoteImage {
  const _$_CheermoteImage({required this.light, required this.dark});

  factory _$_CheermoteImage.fromJson(Map<String, dynamic> json) =>
      _$$_CheermoteImageFromJson(json);

  @override
  final CheermoteImageSet light;
  @override
  final CheermoteImageSet dark;

  @override
  String toString() {
    return 'CheermoteImage(light: $light, dark: $dark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheermoteImage &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, light, dark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheermoteImageCopyWith<_$_CheermoteImage> get copyWith =>
      __$$_CheermoteImageCopyWithImpl<_$_CheermoteImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheermoteImageToJson(
      this,
    );
  }
}

abstract class _CheermoteImage implements CheermoteImage {
  const factory _CheermoteImage(
      {required final CheermoteImageSet light,
      required final CheermoteImageSet dark}) = _$_CheermoteImage;

  factory _CheermoteImage.fromJson(Map<String, dynamic> json) =
      _$_CheermoteImage.fromJson;

  @override
  CheermoteImageSet get light;
  @override
  CheermoteImageSet get dark;
  @override
  @JsonKey(ignore: true)
  _$$_CheermoteImageCopyWith<_$_CheermoteImage> get copyWith =>
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
abstract class _$$_TwitchCheermoteTierCopyWith<$Res>
    implements $TwitchCheermoteTierCopyWith<$Res> {
  factory _$$_TwitchCheermoteTierCopyWith(_$_TwitchCheermoteTier value,
          $Res Function(_$_TwitchCheermoteTier) then) =
      __$$_TwitchCheermoteTierCopyWithImpl<$Res>;
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
class __$$_TwitchCheermoteTierCopyWithImpl<$Res>
    extends _$TwitchCheermoteTierCopyWithImpl<$Res, _$_TwitchCheermoteTier>
    implements _$$_TwitchCheermoteTierCopyWith<$Res> {
  __$$_TwitchCheermoteTierCopyWithImpl(_$_TwitchCheermoteTier _value,
      $Res Function(_$_TwitchCheermoteTier) _then)
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
    return _then(_$_TwitchCheermoteTier(
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
class _$_TwitchCheermoteTier implements _TwitchCheermoteTier {
  const _$_TwitchCheermoteTier(
      {@JsonKey(name: 'min_bits') required this.minBits,
      required this.id,
      required this.color,
      required this.images,
      @JsonKey(name: 'can_cheer') required this.canCheer,
      @JsonKey(name: 'show_in_bits_card') required this.showInBitsCard});

  factory _$_TwitchCheermoteTier.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchCheermoteTierFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchCheermoteTier &&
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
  _$$_TwitchCheermoteTierCopyWith<_$_TwitchCheermoteTier> get copyWith =>
      __$$_TwitchCheermoteTierCopyWithImpl<_$_TwitchCheermoteTier>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchCheermoteTierToJson(
      this,
    );
  }
}

abstract class _TwitchCheermoteTier implements TwitchCheermoteTier {
  const factory _TwitchCheermoteTier(
      {@JsonKey(name: 'min_bits')
          required final int minBits,
      required final String id,
      required final String color,
      required final CheermoteImage images,
      @JsonKey(name: 'can_cheer')
          required final bool canCheer,
      @JsonKey(name: 'show_in_bits_card')
          required final bool showInBitsCard}) = _$_TwitchCheermoteTier;

  factory _TwitchCheermoteTier.fromJson(Map<String, dynamic> json) =
      _$_TwitchCheermoteTier.fromJson;

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
  _$$_TwitchCheermoteTierCopyWith<_$_TwitchCheermoteTier> get copyWith =>
      throw _privateConstructorUsedError;
}
