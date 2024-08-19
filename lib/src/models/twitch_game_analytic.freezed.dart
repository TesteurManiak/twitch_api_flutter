// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_game_analytic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchGameAnalytic _$TwitchGameAnalyticFromJson(Map<String, dynamic> json) {
  return _TwitchGameAnalytic.fromJson(json);
}

/// @nodoc
mixin _$TwitchGameAnalytic {
  @JsonKey(name: 'game_id')
  String get gameId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_range')
  TwitchDateRange get dateRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchGameAnalyticCopyWith<TwitchGameAnalytic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchGameAnalyticCopyWith<$Res> {
  factory $TwitchGameAnalyticCopyWith(
          TwitchGameAnalytic value, $Res Function(TwitchGameAnalytic) then) =
      _$TwitchGameAnalyticCopyWithImpl<$Res, TwitchGameAnalytic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'game_id') String gameId,
      String type,
      @JsonKey(name: 'URL') String url,
      @JsonKey(name: 'date_range') TwitchDateRange dateRange});

  $TwitchDateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$TwitchGameAnalyticCopyWithImpl<$Res, $Val extends TwitchGameAnalytic>
    implements $TwitchGameAnalyticCopyWith<$Res> {
  _$TwitchGameAnalyticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? type = null,
    Object? url = null,
    Object? dateRange = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as TwitchDateRange,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchDateRangeCopyWith<$Res> get dateRange {
    return $TwitchDateRangeCopyWith<$Res>(_value.dateRange, (value) {
      return _then(_value.copyWith(dateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchGameAnalyticImplCopyWith<$Res>
    implements $TwitchGameAnalyticCopyWith<$Res> {
  factory _$$TwitchGameAnalyticImplCopyWith(_$TwitchGameAnalyticImpl value,
          $Res Function(_$TwitchGameAnalyticImpl) then) =
      __$$TwitchGameAnalyticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'game_id') String gameId,
      String type,
      @JsonKey(name: 'URL') String url,
      @JsonKey(name: 'date_range') TwitchDateRange dateRange});

  @override
  $TwitchDateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$$TwitchGameAnalyticImplCopyWithImpl<$Res>
    extends _$TwitchGameAnalyticCopyWithImpl<$Res, _$TwitchGameAnalyticImpl>
    implements _$$TwitchGameAnalyticImplCopyWith<$Res> {
  __$$TwitchGameAnalyticImplCopyWithImpl(_$TwitchGameAnalyticImpl _value,
      $Res Function(_$TwitchGameAnalyticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? type = null,
    Object? url = null,
    Object? dateRange = null,
  }) {
    return _then(_$TwitchGameAnalyticImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as TwitchDateRange,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchGameAnalyticImpl implements _TwitchGameAnalytic {
  const _$TwitchGameAnalyticImpl(
      {@JsonKey(name: 'game_id') required this.gameId,
      required this.type,
      @JsonKey(name: 'URL') required this.url,
      @JsonKey(name: 'date_range') required this.dateRange});

  factory _$TwitchGameAnalyticImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchGameAnalyticImplFromJson(json);

  @override
  @JsonKey(name: 'game_id')
  final String gameId;
  @override
  final String type;
  @override
  @JsonKey(name: 'URL')
  final String url;
  @override
  @JsonKey(name: 'date_range')
  final TwitchDateRange dateRange;

  @override
  String toString() {
    return 'TwitchGameAnalytic(gameId: $gameId, type: $type, url: $url, dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchGameAnalyticImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, type, url, dateRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchGameAnalyticImplCopyWith<_$TwitchGameAnalyticImpl> get copyWith =>
      __$$TwitchGameAnalyticImplCopyWithImpl<_$TwitchGameAnalyticImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchGameAnalyticImplToJson(
      this,
    );
  }
}

abstract class _TwitchGameAnalytic implements TwitchGameAnalytic {
  const factory _TwitchGameAnalytic(
      {@JsonKey(name: 'game_id') required final String gameId,
      required final String type,
      @JsonKey(name: 'URL') required final String url,
      @JsonKey(name: 'date_range')
      required final TwitchDateRange dateRange}) = _$TwitchGameAnalyticImpl;

  factory _TwitchGameAnalytic.fromJson(Map<String, dynamic> json) =
      _$TwitchGameAnalyticImpl.fromJson;

  @override
  @JsonKey(name: 'game_id')
  String get gameId;
  @override
  String get type;
  @override
  @JsonKey(name: 'URL')
  String get url;
  @override
  @JsonKey(name: 'date_range')
  TwitchDateRange get dateRange;
  @override
  @JsonKey(ignore: true)
  _$$TwitchGameAnalyticImplCopyWith<_$TwitchGameAnalyticImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
