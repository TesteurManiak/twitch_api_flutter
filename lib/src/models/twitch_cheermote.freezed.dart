// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_cheermote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchCheermote _$TwitchCheermoteFromJson(Map<String, dynamic> json) {
  return _TwitchCheermote.fromJson(json);
}

/// @nodoc
mixin _$TwitchCheermote {
  /// The string used to Cheer that precedes the Bits amount.
  String get prefix => throw _privateConstructorUsedError;

  /// An array of Cheermotes with their metadata.
  List<TwitchCheermoteTier> get tiers => throw _privateConstructorUsedError;

  /// Shows whether the emote is `globalFirstParty`, `globalThirdParty`,
  /// `channelCustom`, `displayOnly`, or `sponsored`.
  TwitchCheermoteType get type => throw _privateConstructorUsedError;

  /// Order of the emotes as shown in the bits card, in ascending order.
  int get order => throw _privateConstructorUsedError;

  /// The data when this Cheermote was last updated.
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Indicates whether or not this emote provides a charity contribution match
  /// during charity campaigns.
  @JsonKey(name: 'is_charitable')
  bool get isCharitable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchCheermoteCopyWith<TwitchCheermote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCheermoteCopyWith<$Res> {
  factory $TwitchCheermoteCopyWith(
          TwitchCheermote value, $Res Function(TwitchCheermote) then) =
      _$TwitchCheermoteCopyWithImpl<$Res, TwitchCheermote>;
  @useResult
  $Res call(
      {String prefix,
      List<TwitchCheermoteTier> tiers,
      TwitchCheermoteType type,
      int order,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      @JsonKey(name: 'is_charitable') bool isCharitable});
}

/// @nodoc
class _$TwitchCheermoteCopyWithImpl<$Res, $Val extends TwitchCheermote>
    implements $TwitchCheermoteCopyWith<$Res> {
  _$TwitchCheermoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? tiers = null,
    Object? type = null,
    Object? order = null,
    Object? lastUpdated = null,
    Object? isCharitable = null,
  }) {
    return _then(_value.copyWith(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      tiers: null == tiers
          ? _value.tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<TwitchCheermoteTier>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TwitchCheermoteType,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCharitable: null == isCharitable
          ? _value.isCharitable
          : isCharitable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchCheermoteImplCopyWith<$Res>
    implements $TwitchCheermoteCopyWith<$Res> {
  factory _$$TwitchCheermoteImplCopyWith(_$TwitchCheermoteImpl value,
          $Res Function(_$TwitchCheermoteImpl) then) =
      __$$TwitchCheermoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prefix,
      List<TwitchCheermoteTier> tiers,
      TwitchCheermoteType type,
      int order,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      @JsonKey(name: 'is_charitable') bool isCharitable});
}

/// @nodoc
class __$$TwitchCheermoteImplCopyWithImpl<$Res>
    extends _$TwitchCheermoteCopyWithImpl<$Res, _$TwitchCheermoteImpl>
    implements _$$TwitchCheermoteImplCopyWith<$Res> {
  __$$TwitchCheermoteImplCopyWithImpl(
      _$TwitchCheermoteImpl _value, $Res Function(_$TwitchCheermoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? tiers = null,
    Object? type = null,
    Object? order = null,
    Object? lastUpdated = null,
    Object? isCharitable = null,
  }) {
    return _then(_$TwitchCheermoteImpl(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      tiers: null == tiers
          ? _value._tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<TwitchCheermoteTier>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TwitchCheermoteType,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCharitable: null == isCharitable
          ? _value.isCharitable
          : isCharitable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchCheermoteImpl implements _TwitchCheermote {
  const _$TwitchCheermoteImpl(
      {required this.prefix,
      required final List<TwitchCheermoteTier> tiers,
      required this.type,
      required this.order,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'is_charitable') required this.isCharitable})
      : _tiers = tiers;

  factory _$TwitchCheermoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchCheermoteImplFromJson(json);

  /// The string used to Cheer that precedes the Bits amount.
  @override
  final String prefix;

  /// An array of Cheermotes with their metadata.
  final List<TwitchCheermoteTier> _tiers;

  /// An array of Cheermotes with their metadata.
  @override
  List<TwitchCheermoteTier> get tiers {
    if (_tiers is EqualUnmodifiableListView) return _tiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiers);
  }

  /// Shows whether the emote is `globalFirstParty`, `globalThirdParty`,
  /// `channelCustom`, `displayOnly`, or `sponsored`.
  @override
  final TwitchCheermoteType type;

  /// Order of the emotes as shown in the bits card, in ascending order.
  @override
  final int order;

  /// The data when this Cheermote was last updated.
  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;

  /// Indicates whether or not this emote provides a charity contribution match
  /// during charity campaigns.
  @override
  @JsonKey(name: 'is_charitable')
  final bool isCharitable;

  @override
  String toString() {
    return 'TwitchCheermote(prefix: $prefix, tiers: $tiers, type: $type, order: $order, lastUpdated: $lastUpdated, isCharitable: $isCharitable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchCheermoteImpl &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other._tiers, _tiers) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.isCharitable, isCharitable) ||
                other.isCharitable == isCharitable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      prefix,
      const DeepCollectionEquality().hash(_tiers),
      type,
      order,
      lastUpdated,
      isCharitable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchCheermoteImplCopyWith<_$TwitchCheermoteImpl> get copyWith =>
      __$$TwitchCheermoteImplCopyWithImpl<_$TwitchCheermoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchCheermoteImplToJson(
      this,
    );
  }
}

abstract class _TwitchCheermote implements TwitchCheermote {
  const factory _TwitchCheermote(
          {required final String prefix,
          required final List<TwitchCheermoteTier> tiers,
          required final TwitchCheermoteType type,
          required final int order,
          @JsonKey(name: 'last_updated') required final DateTime lastUpdated,
          @JsonKey(name: 'is_charitable') required final bool isCharitable}) =
      _$TwitchCheermoteImpl;

  factory _TwitchCheermote.fromJson(Map<String, dynamic> json) =
      _$TwitchCheermoteImpl.fromJson;

  @override

  /// The string used to Cheer that precedes the Bits amount.
  String get prefix;
  @override

  /// An array of Cheermotes with their metadata.
  List<TwitchCheermoteTier> get tiers;
  @override

  /// Shows whether the emote is `globalFirstParty`, `globalThirdParty`,
  /// `channelCustom`, `displayOnly`, or `sponsored`.
  TwitchCheermoteType get type;
  @override

  /// Order of the emotes as shown in the bits card, in ascending order.
  int get order;
  @override

  /// The data when this Cheermote was last updated.
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override

  /// Indicates whether or not this emote provides a charity contribution match
  /// during charity campaigns.
  @JsonKey(name: 'is_charitable')
  bool get isCharitable;
  @override
  @JsonKey(ignore: true)
  _$$TwitchCheermoteImplCopyWith<_$TwitchCheermoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
