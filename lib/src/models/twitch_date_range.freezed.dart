// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_date_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchDateRange _$TwitchDateRangeFromJson(Map<String, dynamic> json) {
  return _TwitchDateRange.fromJson(json);
}

/// @nodoc
mixin _$TwitchDateRange {
  /// Report end date/time.
  @JsonKey(name: 'ended_at')
  String get endedAt => throw _privateConstructorUsedError;

  /// Report start date/time. Note this may differ from (be later than) the
  /// `startedAt` value in the request; the response value is the date when
  /// data for the extension is available.
  @JsonKey(name: 'started_at')
  String get startedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchDateRangeCopyWith<TwitchDateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchDateRangeCopyWith<$Res> {
  factory $TwitchDateRangeCopyWith(
          TwitchDateRange value, $Res Function(TwitchDateRange) then) =
      _$TwitchDateRangeCopyWithImpl<$Res, TwitchDateRange>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ended_at') String endedAt,
      @JsonKey(name: 'started_at') String startedAt});
}

/// @nodoc
class _$TwitchDateRangeCopyWithImpl<$Res, $Val extends TwitchDateRange>
    implements $TwitchDateRangeCopyWith<$Res> {
  _$TwitchDateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endedAt = null,
    Object? startedAt = null,
  }) {
    return _then(_value.copyWith(
      endedAt: null == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchDateRangeImplCopyWith<$Res>
    implements $TwitchDateRangeCopyWith<$Res> {
  factory _$$TwitchDateRangeImplCopyWith(_$TwitchDateRangeImpl value,
          $Res Function(_$TwitchDateRangeImpl) then) =
      __$$TwitchDateRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ended_at') String endedAt,
      @JsonKey(name: 'started_at') String startedAt});
}

/// @nodoc
class __$$TwitchDateRangeImplCopyWithImpl<$Res>
    extends _$TwitchDateRangeCopyWithImpl<$Res, _$TwitchDateRangeImpl>
    implements _$$TwitchDateRangeImplCopyWith<$Res> {
  __$$TwitchDateRangeImplCopyWithImpl(
      _$TwitchDateRangeImpl _value, $Res Function(_$TwitchDateRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endedAt = null,
    Object? startedAt = null,
  }) {
    return _then(_$TwitchDateRangeImpl(
      endedAt: null == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchDateRangeImpl implements _TwitchDateRange {
  const _$TwitchDateRangeImpl(
      {@JsonKey(name: 'ended_at') required this.endedAt,
      @JsonKey(name: 'started_at') required this.startedAt});

  factory _$TwitchDateRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchDateRangeImplFromJson(json);

  /// Report end date/time.
  @override
  @JsonKey(name: 'ended_at')
  final String endedAt;

  /// Report start date/time. Note this may differ from (be later than) the
  /// `startedAt` value in the request; the response value is the date when
  /// data for the extension is available.
  @override
  @JsonKey(name: 'started_at')
  final String startedAt;

  @override
  String toString() {
    return 'TwitchDateRange(endedAt: $endedAt, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchDateRangeImpl &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, endedAt, startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchDateRangeImplCopyWith<_$TwitchDateRangeImpl> get copyWith =>
      __$$TwitchDateRangeImplCopyWithImpl<_$TwitchDateRangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchDateRangeImplToJson(
      this,
    );
  }
}

abstract class _TwitchDateRange implements TwitchDateRange {
  const factory _TwitchDateRange(
          {@JsonKey(name: 'ended_at') required final String endedAt,
          @JsonKey(name: 'started_at') required final String startedAt}) =
      _$TwitchDateRangeImpl;

  factory _TwitchDateRange.fromJson(Map<String, dynamic> json) =
      _$TwitchDateRangeImpl.fromJson;

  @override

  /// Report end date/time.
  @JsonKey(name: 'ended_at')
  String get endedAt;
  @override

  /// Report start date/time. Note this may differ from (be later than) the
  /// `startedAt` value in the request; the response value is the date when
  /// data for the extension is available.
  @JsonKey(name: 'started_at')
  String get startedAt;
  @override
  @JsonKey(ignore: true)
  _$$TwitchDateRangeImplCopyWith<_$TwitchDateRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
