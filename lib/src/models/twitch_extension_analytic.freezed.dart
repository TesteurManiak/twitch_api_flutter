// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_extension_analytic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchExtensionAnalytic _$TwitchExtensionAnalyticFromJson(
    Map<String, dynamic> json) {
  return _TwitchExtensionAnalytic.fromJson(json);
}

/// @nodoc
mixin _$TwitchExtensionAnalytic {
  @JsonKey(name: 'date_range')
  TwitchDateRange get dateRange => throw _privateConstructorUsedError;

  /// ID of the extension whose analytics data is being provided.
  @JsonKey(name: 'extension_id')
  String get extensionId => throw _privateConstructorUsedError;

  /// Type of report.
  String get type => throw _privateConstructorUsedError;

  /// URL to the downloadable CSV file containing analytics data. Valid for 5
  /// minutes.
  @JsonKey(name: 'URL')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchExtensionAnalyticCopyWith<TwitchExtensionAnalytic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchExtensionAnalyticCopyWith<$Res> {
  factory $TwitchExtensionAnalyticCopyWith(TwitchExtensionAnalytic value,
          $Res Function(TwitchExtensionAnalytic) then) =
      _$TwitchExtensionAnalyticCopyWithImpl<$Res, TwitchExtensionAnalytic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date_range') TwitchDateRange dateRange,
      @JsonKey(name: 'extension_id') String extensionId,
      String type,
      @JsonKey(name: 'URL') String url});

  $TwitchDateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$TwitchExtensionAnalyticCopyWithImpl<$Res,
        $Val extends TwitchExtensionAnalytic>
    implements $TwitchExtensionAnalyticCopyWith<$Res> {
  _$TwitchExtensionAnalyticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = null,
    Object? extensionId = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as TwitchDateRange,
      extensionId: null == extensionId
          ? _value.extensionId
          : extensionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$TwitchExtensionAnalyticImplCopyWith<$Res>
    implements $TwitchExtensionAnalyticCopyWith<$Res> {
  factory _$$TwitchExtensionAnalyticImplCopyWith(
          _$TwitchExtensionAnalyticImpl value,
          $Res Function(_$TwitchExtensionAnalyticImpl) then) =
      __$$TwitchExtensionAnalyticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date_range') TwitchDateRange dateRange,
      @JsonKey(name: 'extension_id') String extensionId,
      String type,
      @JsonKey(name: 'URL') String url});

  @override
  $TwitchDateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$$TwitchExtensionAnalyticImplCopyWithImpl<$Res>
    extends _$TwitchExtensionAnalyticCopyWithImpl<$Res,
        _$TwitchExtensionAnalyticImpl>
    implements _$$TwitchExtensionAnalyticImplCopyWith<$Res> {
  __$$TwitchExtensionAnalyticImplCopyWithImpl(
      _$TwitchExtensionAnalyticImpl _value,
      $Res Function(_$TwitchExtensionAnalyticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = null,
    Object? extensionId = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$TwitchExtensionAnalyticImpl(
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as TwitchDateRange,
      extensionId: null == extensionId
          ? _value.extensionId
          : extensionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchExtensionAnalyticImpl implements _TwitchExtensionAnalytic {
  const _$TwitchExtensionAnalyticImpl(
      {@JsonKey(name: 'date_range') required this.dateRange,
      @JsonKey(name: 'extension_id') required this.extensionId,
      required this.type,
      @JsonKey(name: 'URL') required this.url});

  factory _$TwitchExtensionAnalyticImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchExtensionAnalyticImplFromJson(json);

  @override
  @JsonKey(name: 'date_range')
  final TwitchDateRange dateRange;

  /// ID of the extension whose analytics data is being provided.
  @override
  @JsonKey(name: 'extension_id')
  final String extensionId;

  /// Type of report.
  @override
  final String type;

  /// URL to the downloadable CSV file containing analytics data. Valid for 5
  /// minutes.
  @override
  @JsonKey(name: 'URL')
  final String url;

  @override
  String toString() {
    return 'TwitchExtensionAnalytic(dateRange: $dateRange, extensionId: $extensionId, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchExtensionAnalyticImpl &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.extensionId, extensionId) ||
                other.extensionId == extensionId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateRange, extensionId, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchExtensionAnalyticImplCopyWith<_$TwitchExtensionAnalyticImpl>
      get copyWith => __$$TwitchExtensionAnalyticImplCopyWithImpl<
          _$TwitchExtensionAnalyticImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchExtensionAnalyticImplToJson(
      this,
    );
  }
}

abstract class _TwitchExtensionAnalytic implements TwitchExtensionAnalytic {
  const factory _TwitchExtensionAnalytic(
      {@JsonKey(name: 'date_range') required final TwitchDateRange dateRange,
      @JsonKey(name: 'extension_id') required final String extensionId,
      required final String type,
      @JsonKey(name: 'URL')
      required final String url}) = _$TwitchExtensionAnalyticImpl;

  factory _TwitchExtensionAnalytic.fromJson(Map<String, dynamic> json) =
      _$TwitchExtensionAnalyticImpl.fromJson;

  @override
  @JsonKey(name: 'date_range')
  TwitchDateRange get dateRange;
  @override

  /// ID of the extension whose analytics data is being provided.
  @JsonKey(name: 'extension_id')
  String get extensionId;
  @override

  /// Type of report.
  String get type;
  @override

  /// URL to the downloadable CSV file containing analytics data. Valid for 5
  /// minutes.
  @JsonKey(name: 'URL')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TwitchExtensionAnalyticImplCopyWith<_$TwitchExtensionAnalyticImpl>
      get copyWith => throw _privateConstructorUsedError;
}
