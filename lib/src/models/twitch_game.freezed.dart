// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitchGame _$TwitchGameFromJson(Map<String, dynamic> json) {
  return _TwitchGame.fromJson(json);
}

/// @nodoc
mixin _$TwitchGame {
  /// Template URL for the game’s box art.
  @JsonKey(name: 'box_art_url')
  String get boxArtUrl => throw _privateConstructorUsedError;

  /// Game ID.
  String get id => throw _privateConstructorUsedError;

  /// Game name.
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchGameCopyWith<TwitchGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchGameCopyWith<$Res> {
  factory $TwitchGameCopyWith(
          TwitchGame value, $Res Function(TwitchGame) then) =
      _$TwitchGameCopyWithImpl<$Res, TwitchGame>;
  @useResult
  $Res call(
      {@JsonKey(name: 'box_art_url') String boxArtUrl, String id, String name});
}

/// @nodoc
class _$TwitchGameCopyWithImpl<$Res, $Val extends TwitchGame>
    implements $TwitchGameCopyWith<$Res> {
  _$TwitchGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxArtUrl = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      boxArtUrl: null == boxArtUrl
          ? _value.boxArtUrl
          : boxArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchGameCopyWith<$Res>
    implements $TwitchGameCopyWith<$Res> {
  factory _$$_TwitchGameCopyWith(
          _$_TwitchGame value, $Res Function(_$_TwitchGame) then) =
      __$$_TwitchGameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'box_art_url') String boxArtUrl, String id, String name});
}

/// @nodoc
class __$$_TwitchGameCopyWithImpl<$Res>
    extends _$TwitchGameCopyWithImpl<$Res, _$_TwitchGame>
    implements _$$_TwitchGameCopyWith<$Res> {
  __$$_TwitchGameCopyWithImpl(
      _$_TwitchGame _value, $Res Function(_$_TwitchGame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxArtUrl = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_TwitchGame(
      boxArtUrl: null == boxArtUrl
          ? _value.boxArtUrl
          : boxArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchGame extends _TwitchGame {
  const _$_TwitchGame(
      {@JsonKey(name: 'box_art_url') required this.boxArtUrl,
      required this.id,
      required this.name})
      : super._();

  factory _$_TwitchGame.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchGameFromJson(json);

  /// Template URL for the game’s box art.
  @override
  @JsonKey(name: 'box_art_url')
  final String boxArtUrl;

  /// Game ID.
  @override
  final String id;

  /// Game name.
  @override
  final String name;

  @override
  String toString() {
    return 'TwitchGame(boxArtUrl: $boxArtUrl, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchGame &&
            (identical(other.boxArtUrl, boxArtUrl) ||
                other.boxArtUrl == boxArtUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, boxArtUrl, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchGameCopyWith<_$_TwitchGame> get copyWith =>
      __$$_TwitchGameCopyWithImpl<_$_TwitchGame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchGameToJson(
      this,
    );
  }
}

abstract class _TwitchGame extends TwitchGame {
  const factory _TwitchGame(
      {@JsonKey(name: 'box_art_url') required final String boxArtUrl,
      required final String id,
      required final String name}) = _$_TwitchGame;
  const _TwitchGame._() : super._();

  factory _TwitchGame.fromJson(Map<String, dynamic> json) =
      _$_TwitchGame.fromJson;

  @override

  /// Template URL for the game’s box art.
  @JsonKey(name: 'box_art_url')
  String get boxArtUrl;
  @override

  /// Game ID.
  String get id;
  @override

  /// Game name.
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchGameCopyWith<_$_TwitchGame> get copyWith =>
      throw _privateConstructorUsedError;
}
