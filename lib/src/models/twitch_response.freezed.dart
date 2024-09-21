// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartCommercialResponse _$StartCommercialResponseFromJson(
    Map<String, dynamic> json) {
  return _StartCommercialResponse.fromJson(json);
}

/// @nodoc
mixin _$StartCommercialResponse {
  /// {@template twitchResponse.data}
  /// List of data from the response parsed into an object.
  /// {@endtemplate}
  List<TwitchStartCommercial> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartCommercialResponseCopyWith<StartCommercialResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartCommercialResponseCopyWith<$Res> {
  factory $StartCommercialResponseCopyWith(StartCommercialResponse value,
          $Res Function(StartCommercialResponse) then) =
      _$StartCommercialResponseCopyWithImpl<$Res, StartCommercialResponse>;
  @useResult
  $Res call({List<TwitchStartCommercial> data});
}

/// @nodoc
class _$StartCommercialResponseCopyWithImpl<$Res,
        $Val extends StartCommercialResponse>
    implements $StartCommercialResponseCopyWith<$Res> {
  _$StartCommercialResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchStartCommercial>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartCommercialResponseImplCopyWith<$Res>
    implements $StartCommercialResponseCopyWith<$Res> {
  factory _$$StartCommercialResponseImplCopyWith(
          _$StartCommercialResponseImpl value,
          $Res Function(_$StartCommercialResponseImpl) then) =
      __$$StartCommercialResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchStartCommercial> data});
}

/// @nodoc
class __$$StartCommercialResponseImplCopyWithImpl<$Res>
    extends _$StartCommercialResponseCopyWithImpl<$Res,
        _$StartCommercialResponseImpl>
    implements _$$StartCommercialResponseImplCopyWith<$Res> {
  __$$StartCommercialResponseImplCopyWithImpl(
      _$StartCommercialResponseImpl _value,
      $Res Function(_$StartCommercialResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StartCommercialResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchStartCommercial>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$StartCommercialResponseImpl implements _StartCommercialResponse {
  const _$StartCommercialResponseImpl(
      {required final List<TwitchStartCommercial> data})
      : _data = data;

  factory _$StartCommercialResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartCommercialResponseImplFromJson(json);

  /// {@template twitchResponse.data}
  /// List of data from the response parsed into an object.
  /// {@endtemplate}
  final List<TwitchStartCommercial> _data;

  /// {@template twitchResponse.data}
  /// List of data from the response parsed into an object.
  /// {@endtemplate}
  @override
  List<TwitchStartCommercial> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'StartCommercialResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartCommercialResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartCommercialResponseImplCopyWith<_$StartCommercialResponseImpl>
      get copyWith => __$$StartCommercialResponseImplCopyWithImpl<
          _$StartCommercialResponseImpl>(this, _$identity);
}

abstract class _StartCommercialResponse implements StartCommercialResponse {
  const factory _StartCommercialResponse(
          {required final List<TwitchStartCommercial> data}) =
      _$StartCommercialResponseImpl;

  factory _StartCommercialResponse.fromJson(Map<String, dynamic> json) =
      _$StartCommercialResponseImpl.fromJson;

  @override

  /// {@template twitchResponse.data}
  /// List of data from the response parsed into an object.
  /// {@endtemplate}
  List<TwitchStartCommercial> get data;
  @override
  @JsonKey(ignore: true)
  _$$StartCommercialResponseImplCopyWith<_$StartCommercialResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExtensionAnalyticsResponse _$ExtensionAnalyticsResponseFromJson(
    Map<String, dynamic> json) {
  return _ExtensionAnalyticsResponse.fromJson(json);
}

/// @nodoc
mixin _$ExtensionAnalyticsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchExtensionAnalytic> get data => throw _privateConstructorUsedError;

  /// {@template twitchResponse.pagination}
  /// A cursor value, to be used in a subsequent request to specify the
  /// starting point of the next set of results.
  /// {@endtemplate}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtensionAnalyticsResponseCopyWith<ExtensionAnalyticsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionAnalyticsResponseCopyWith<$Res> {
  factory $ExtensionAnalyticsResponseCopyWith(ExtensionAnalyticsResponse value,
          $Res Function(ExtensionAnalyticsResponse) then) =
      _$ExtensionAnalyticsResponseCopyWithImpl<$Res,
          ExtensionAnalyticsResponse>;
  @useResult
  $Res call(
      {List<TwitchExtensionAnalytic> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class _$ExtensionAnalyticsResponseCopyWithImpl<$Res,
        $Val extends ExtensionAnalyticsResponse>
    implements $ExtensionAnalyticsResponseCopyWith<$Res> {
  _$ExtensionAnalyticsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchExtensionAnalytic>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtensionAnalyticsResponseImplCopyWith<$Res>
    implements $ExtensionAnalyticsResponseCopyWith<$Res> {
  factory _$$ExtensionAnalyticsResponseImplCopyWith(
          _$ExtensionAnalyticsResponseImpl value,
          $Res Function(_$ExtensionAnalyticsResponseImpl) then) =
      __$$ExtensionAnalyticsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchExtensionAnalytic> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$ExtensionAnalyticsResponseImplCopyWithImpl<$Res>
    extends _$ExtensionAnalyticsResponseCopyWithImpl<$Res,
        _$ExtensionAnalyticsResponseImpl>
    implements _$$ExtensionAnalyticsResponseImplCopyWith<$Res> {
  __$$ExtensionAnalyticsResponseImplCopyWithImpl(
      _$ExtensionAnalyticsResponseImpl _value,
      $Res Function(_$ExtensionAnalyticsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$ExtensionAnalyticsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchExtensionAnalytic>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ExtensionAnalyticsResponseImpl implements _ExtensionAnalyticsResponse {
  const _$ExtensionAnalyticsResponseImpl(
      {required final List<TwitchExtensionAnalytic> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$ExtensionAnalyticsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExtensionAnalyticsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchExtensionAnalytic> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchExtensionAnalytic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@template twitchResponse.pagination}
  /// A cursor value, to be used in a subsequent request to specify the
  /// starting point of the next set of results.
  /// {@endtemplate}
  final Map<String, dynamic>? _pagination;

  /// {@template twitchResponse.pagination}
  /// A cursor value, to be used in a subsequent request to specify the
  /// starting point of the next set of results.
  /// {@endtemplate}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ExtensionAnalyticsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtensionAnalyticsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtensionAnalyticsResponseImplCopyWith<_$ExtensionAnalyticsResponseImpl>
      get copyWith => __$$ExtensionAnalyticsResponseImplCopyWithImpl<
          _$ExtensionAnalyticsResponseImpl>(this, _$identity);
}

abstract class _ExtensionAnalyticsResponse
    implements ExtensionAnalyticsResponse {
  const factory _ExtensionAnalyticsResponse(
          {required final List<TwitchExtensionAnalytic> data,
          required final Map<String, dynamic>? pagination}) =
      _$ExtensionAnalyticsResponseImpl;

  factory _ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$ExtensionAnalyticsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchExtensionAnalytic> get data;
  @override

  /// {@template twitchResponse.pagination}
  /// A cursor value, to be used in a subsequent request to specify the
  /// starting point of the next set of results.
  /// {@endtemplate}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$ExtensionAnalyticsResponseImplCopyWith<_$ExtensionAnalyticsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GameAnalyticsResponse _$GameAnalyticsResponseFromJson(
    Map<String, dynamic> json) {
  return _GameAnalyticsResponse.fromJson(json);
}

/// @nodoc
mixin _$GameAnalyticsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGameAnalytic> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameAnalyticsResponseCopyWith<GameAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAnalyticsResponseCopyWith<$Res> {
  factory $GameAnalyticsResponseCopyWith(GameAnalyticsResponse value,
          $Res Function(GameAnalyticsResponse) then) =
      _$GameAnalyticsResponseCopyWithImpl<$Res, GameAnalyticsResponse>;
  @useResult
  $Res call({List<TwitchGameAnalytic> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class _$GameAnalyticsResponseCopyWithImpl<$Res,
        $Val extends GameAnalyticsResponse>
    implements $GameAnalyticsResponseCopyWith<$Res> {
  _$GameAnalyticsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGameAnalytic>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameAnalyticsResponseImplCopyWith<$Res>
    implements $GameAnalyticsResponseCopyWith<$Res> {
  factory _$$GameAnalyticsResponseImplCopyWith(
          _$GameAnalyticsResponseImpl value,
          $Res Function(_$GameAnalyticsResponseImpl) then) =
      __$$GameAnalyticsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGameAnalytic> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$GameAnalyticsResponseImplCopyWithImpl<$Res>
    extends _$GameAnalyticsResponseCopyWithImpl<$Res,
        _$GameAnalyticsResponseImpl>
    implements _$$GameAnalyticsResponseImplCopyWith<$Res> {
  __$$GameAnalyticsResponseImplCopyWithImpl(_$GameAnalyticsResponseImpl _value,
      $Res Function(_$GameAnalyticsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$GameAnalyticsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGameAnalytic>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$GameAnalyticsResponseImpl implements _GameAnalyticsResponse {
  const _$GameAnalyticsResponseImpl(
      {required final List<TwitchGameAnalytic> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$GameAnalyticsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameAnalyticsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchGameAnalytic> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchGameAnalytic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GameAnalyticsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameAnalyticsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameAnalyticsResponseImplCopyWith<_$GameAnalyticsResponseImpl>
      get copyWith => __$$GameAnalyticsResponseImplCopyWithImpl<
          _$GameAnalyticsResponseImpl>(this, _$identity);
}

abstract class _GameAnalyticsResponse implements GameAnalyticsResponse {
  const factory _GameAnalyticsResponse(
          {required final List<TwitchGameAnalytic> data,
          required final Map<String, dynamic>? pagination}) =
      _$GameAnalyticsResponseImpl;

  factory _GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$GameAnalyticsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGameAnalytic> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$GameAnalyticsResponseImplCopyWith<_$GameAnalyticsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BitsLeaderboardResponse _$BitsLeaderboardResponseFromJson(
    Map<String, dynamic> json) {
  return _BitsLeaderboardResponse.fromJson(json);
}

/// @nodoc
mixin _$BitsLeaderboardResponse {
  /// {@macro twitchResponse.data}
  List<TwitchBitsLeaderboard> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.dateRange}
  @JsonKey(name: 'date_range')
  TwitchDateRange get dateRange => throw _privateConstructorUsedError;

  /// {@template twitchResponse.total}
  /// Total number of results returned.
  /// {@endtemplate}
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BitsLeaderboardResponseCopyWith<BitsLeaderboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitsLeaderboardResponseCopyWith<$Res> {
  factory $BitsLeaderboardResponseCopyWith(BitsLeaderboardResponse value,
          $Res Function(BitsLeaderboardResponse) then) =
      _$BitsLeaderboardResponseCopyWithImpl<$Res, BitsLeaderboardResponse>;
  @useResult
  $Res call(
      {List<TwitchBitsLeaderboard> data,
      @JsonKey(name: 'date_range') TwitchDateRange dateRange,
      int total});

  $TwitchDateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$BitsLeaderboardResponseCopyWithImpl<$Res,
        $Val extends BitsLeaderboardResponse>
    implements $BitsLeaderboardResponseCopyWith<$Res> {
  _$BitsLeaderboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dateRange = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchBitsLeaderboard>,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as TwitchDateRange,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$BitsLeaderboardResponseImplCopyWith<$Res>
    implements $BitsLeaderboardResponseCopyWith<$Res> {
  factory _$$BitsLeaderboardResponseImplCopyWith(
          _$BitsLeaderboardResponseImpl value,
          $Res Function(_$BitsLeaderboardResponseImpl) then) =
      __$$BitsLeaderboardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchBitsLeaderboard> data,
      @JsonKey(name: 'date_range') TwitchDateRange dateRange,
      int total});

  @override
  $TwitchDateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$$BitsLeaderboardResponseImplCopyWithImpl<$Res>
    extends _$BitsLeaderboardResponseCopyWithImpl<$Res,
        _$BitsLeaderboardResponseImpl>
    implements _$$BitsLeaderboardResponseImplCopyWith<$Res> {
  __$$BitsLeaderboardResponseImplCopyWithImpl(
      _$BitsLeaderboardResponseImpl _value,
      $Res Function(_$BitsLeaderboardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dateRange = null,
    Object? total = null,
  }) {
    return _then(_$BitsLeaderboardResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchBitsLeaderboard>,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as TwitchDateRange,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$BitsLeaderboardResponseImpl implements _BitsLeaderboardResponse {
  const _$BitsLeaderboardResponseImpl(
      {required final List<TwitchBitsLeaderboard> data,
      @JsonKey(name: 'date_range') required this.dateRange,
      required this.total})
      : _data = data;

  factory _$BitsLeaderboardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BitsLeaderboardResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchBitsLeaderboard> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchBitsLeaderboard> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.dateRange}
  @override
  @JsonKey(name: 'date_range')
  final TwitchDateRange dateRange;

  /// {@template twitchResponse.total}
  /// Total number of results returned.
  /// {@endtemplate}
  @override
  final int total;

  @override
  String toString() {
    return 'BitsLeaderboardResponse(data: $data, dateRange: $dateRange, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitsLeaderboardResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), dateRange, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BitsLeaderboardResponseImplCopyWith<_$BitsLeaderboardResponseImpl>
      get copyWith => __$$BitsLeaderboardResponseImplCopyWithImpl<
          _$BitsLeaderboardResponseImpl>(this, _$identity);
}

abstract class _BitsLeaderboardResponse implements BitsLeaderboardResponse {
  const factory _BitsLeaderboardResponse(
      {required final List<TwitchBitsLeaderboard> data,
      @JsonKey(name: 'date_range') required final TwitchDateRange dateRange,
      required final int total}) = _$BitsLeaderboardResponseImpl;

  factory _BitsLeaderboardResponse.fromJson(Map<String, dynamic> json) =
      _$BitsLeaderboardResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchBitsLeaderboard> get data;
  @override

  /// {@macro twitchResponse.dateRange}
  @JsonKey(name: 'date_range')
  TwitchDateRange get dateRange;
  @override

  /// {@template twitchResponse.total}
  /// Total number of results returned.
  /// {@endtemplate}
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$BitsLeaderboardResponseImplCopyWith<_$BitsLeaderboardResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UsersResponse _$UsersResponseFromJson(Map<String, dynamic> json) {
  return _UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersResponse {
  /// {@macro twitchResponse.data}
  List<TwitchUser> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersResponseCopyWith<UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseCopyWith<$Res> {
  factory $UsersResponseCopyWith(
          UsersResponse value, $Res Function(UsersResponse) then) =
      _$UsersResponseCopyWithImpl<$Res, UsersResponse>;
  @useResult
  $Res call({List<TwitchUser> data});
}

/// @nodoc
class _$UsersResponseCopyWithImpl<$Res, $Val extends UsersResponse>
    implements $UsersResponseCopyWith<$Res> {
  _$UsersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersResponseImplCopyWith<$Res>
    implements $UsersResponseCopyWith<$Res> {
  factory _$$UsersResponseImplCopyWith(
          _$UsersResponseImpl value, $Res Function(_$UsersResponseImpl) then) =
      __$$UsersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchUser> data});
}

/// @nodoc
class __$$UsersResponseImplCopyWithImpl<$Res>
    extends _$UsersResponseCopyWithImpl<$Res, _$UsersResponseImpl>
    implements _$$UsersResponseImplCopyWith<$Res> {
  __$$UsersResponseImplCopyWithImpl(
      _$UsersResponseImpl _value, $Res Function(_$UsersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UsersResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$UsersResponseImpl implements _UsersResponse {
  const _$UsersResponseImpl({required final List<TwitchUser> data})
      : _data = data;

  factory _$UsersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchUser> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchUser> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UsersResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersResponseImplCopyWith<_$UsersResponseImpl> get copyWith =>
      __$$UsersResponseImplCopyWithImpl<_$UsersResponseImpl>(this, _$identity);
}

abstract class _UsersResponse implements UsersResponse {
  const factory _UsersResponse({required final List<TwitchUser> data}) =
      _$UsersResponseImpl;

  factory _UsersResponse.fromJson(Map<String, dynamic> json) =
      _$UsersResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchUser> get data;
  @override
  @JsonKey(ignore: true)
  _$$UsersResponseImplCopyWith<_$UsersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsersFollowsResponse _$UsersFollowsResponseFromJson(Map<String, dynamic> json) {
  return _UsersFollowsResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersFollowsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchUserFollow> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.total}
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersFollowsResponseCopyWith<UsersFollowsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersFollowsResponseCopyWith<$Res> {
  factory $UsersFollowsResponseCopyWith(UsersFollowsResponse value,
          $Res Function(UsersFollowsResponse) then) =
      _$UsersFollowsResponseCopyWithImpl<$Res, UsersFollowsResponse>;
  @useResult
  $Res call(
      {List<TwitchUserFollow> data,
      Map<String, dynamic>? pagination,
      int total});
}

/// @nodoc
class _$UsersFollowsResponseCopyWithImpl<$Res,
        $Val extends UsersFollowsResponse>
    implements $UsersFollowsResponseCopyWith<$Res> {
  _$UsersFollowsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchUserFollow>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersFollowsResponseImplCopyWith<$Res>
    implements $UsersFollowsResponseCopyWith<$Res> {
  factory _$$UsersFollowsResponseImplCopyWith(_$UsersFollowsResponseImpl value,
          $Res Function(_$UsersFollowsResponseImpl) then) =
      __$$UsersFollowsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchUserFollow> data,
      Map<String, dynamic>? pagination,
      int total});
}

/// @nodoc
class __$$UsersFollowsResponseImplCopyWithImpl<$Res>
    extends _$UsersFollowsResponseCopyWithImpl<$Res, _$UsersFollowsResponseImpl>
    implements _$$UsersFollowsResponseImplCopyWith<$Res> {
  __$$UsersFollowsResponseImplCopyWithImpl(_$UsersFollowsResponseImpl _value,
      $Res Function(_$UsersFollowsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
    Object? total = null,
  }) {
    return _then(_$UsersFollowsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchUserFollow>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$UsersFollowsResponseImpl implements _UsersFollowsResponse {
  const _$UsersFollowsResponseImpl(
      {required final List<TwitchUserFollow> data,
      required final Map<String, dynamic>? pagination,
      required this.total})
      : _data = data,
        _pagination = pagination;

  factory _$UsersFollowsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersFollowsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchUserFollow> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchUserFollow> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// {@macro twitchResponse.total}
  @override
  final int total;

  @override
  String toString() {
    return 'UsersFollowsResponse(data: $data, pagination: $pagination, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFollowsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination),
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersFollowsResponseImplCopyWith<_$UsersFollowsResponseImpl>
      get copyWith =>
          __$$UsersFollowsResponseImplCopyWithImpl<_$UsersFollowsResponseImpl>(
              this, _$identity);
}

abstract class _UsersFollowsResponse implements UsersFollowsResponse {
  const factory _UsersFollowsResponse(
      {required final List<TwitchUserFollow> data,
      required final Map<String, dynamic>? pagination,
      required final int total}) = _$UsersFollowsResponseImpl;

  factory _UsersFollowsResponse.fromJson(Map<String, dynamic> json) =
      _$UsersFollowsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchUserFollow> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override

  /// {@macro twitchResponse.total}
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$UsersFollowsResponseImplCopyWith<_$UsersFollowsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopGamesResponse _$TopGamesResponseFromJson(Map<String, dynamic> json) {
  return _TopGamesResponse.fromJson(json);
}

/// @nodoc
mixin _$TopGamesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGame> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopGamesResponseCopyWith<TopGamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGamesResponseCopyWith<$Res> {
  factory $TopGamesResponseCopyWith(
          TopGamesResponse value, $Res Function(TopGamesResponse) then) =
      _$TopGamesResponseCopyWithImpl<$Res, TopGamesResponse>;
  @useResult
  $Res call({List<TwitchGame> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class _$TopGamesResponseCopyWithImpl<$Res, $Val extends TopGamesResponse>
    implements $TopGamesResponseCopyWith<$Res> {
  _$TopGamesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopGamesResponseImplCopyWith<$Res>
    implements $TopGamesResponseCopyWith<$Res> {
  factory _$$TopGamesResponseImplCopyWith(_$TopGamesResponseImpl value,
          $Res Function(_$TopGamesResponseImpl) then) =
      __$$TopGamesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGame> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$TopGamesResponseImplCopyWithImpl<$Res>
    extends _$TopGamesResponseCopyWithImpl<$Res, _$TopGamesResponseImpl>
    implements _$$TopGamesResponseImplCopyWith<$Res> {
  __$$TopGamesResponseImplCopyWithImpl(_$TopGamesResponseImpl _value,
      $Res Function(_$TopGamesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$TopGamesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TopGamesResponseImpl implements _TopGamesResponse {
  const _$TopGamesResponseImpl(
      {required final List<TwitchGame> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$TopGamesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopGamesResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchGame> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchGame> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TopGamesResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGamesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGamesResponseImplCopyWith<_$TopGamesResponseImpl> get copyWith =>
      __$$TopGamesResponseImplCopyWithImpl<_$TopGamesResponseImpl>(
          this, _$identity);
}

abstract class _TopGamesResponse implements TopGamesResponse {
  const factory _TopGamesResponse(
          {required final List<TwitchGame> data,
          required final Map<String, dynamic>? pagination}) =
      _$TopGamesResponseImpl;

  factory _TopGamesResponse.fromJson(Map<String, dynamic> json) =
      _$TopGamesResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGame> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$TopGamesResponseImplCopyWith<_$TopGamesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GamesResponse _$GamesResponseFromJson(Map<String, dynamic> json) {
  return _GamesResponse.fromJson(json);
}

/// @nodoc
mixin _$GamesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGame> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamesResponseCopyWith<GamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesResponseCopyWith<$Res> {
  factory $GamesResponseCopyWith(
          GamesResponse value, $Res Function(GamesResponse) then) =
      _$GamesResponseCopyWithImpl<$Res, GamesResponse>;
  @useResult
  $Res call({List<TwitchGame> data});
}

/// @nodoc
class _$GamesResponseCopyWithImpl<$Res, $Val extends GamesResponse>
    implements $GamesResponseCopyWith<$Res> {
  _$GamesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesResponseImplCopyWith<$Res>
    implements $GamesResponseCopyWith<$Res> {
  factory _$$GamesResponseImplCopyWith(
          _$GamesResponseImpl value, $Res Function(_$GamesResponseImpl) then) =
      __$$GamesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGame> data});
}

/// @nodoc
class __$$GamesResponseImplCopyWithImpl<$Res>
    extends _$GamesResponseCopyWithImpl<$Res, _$GamesResponseImpl>
    implements _$$GamesResponseImplCopyWith<$Res> {
  __$$GamesResponseImplCopyWithImpl(
      _$GamesResponseImpl _value, $Res Function(_$GamesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GamesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$GamesResponseImpl implements _GamesResponse {
  const _$GamesResponseImpl({required final List<TwitchGame> data})
      : _data = data;

  factory _$GamesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchGame> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchGame> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GamesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesResponseImplCopyWith<_$GamesResponseImpl> get copyWith =>
      __$$GamesResponseImplCopyWithImpl<_$GamesResponseImpl>(this, _$identity);
}

abstract class _GamesResponse implements GamesResponse {
  const factory _GamesResponse({required final List<TwitchGame> data}) =
      _$GamesResponseImpl;

  factory _GamesResponse.fromJson(Map<String, dynamic> json) =
      _$GamesResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGame> get data;
  @override
  @JsonKey(ignore: true)
  _$$GamesResponseImplCopyWith<_$GamesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelInformationResponse _$ChannelInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelInformationResponse {
  /// {@macro twitchResponse.data}
  List<TwitchChannelInfo> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelInformationResponseCopyWith<ChannelInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelInformationResponseCopyWith<$Res> {
  factory $ChannelInformationResponseCopyWith(ChannelInformationResponse value,
          $Res Function(ChannelInformationResponse) then) =
      _$ChannelInformationResponseCopyWithImpl<$Res,
          ChannelInformationResponse>;
  @useResult
  $Res call({List<TwitchChannelInfo> data});
}

/// @nodoc
class _$ChannelInformationResponseCopyWithImpl<$Res,
        $Val extends ChannelInformationResponse>
    implements $ChannelInformationResponseCopyWith<$Res> {
  _$ChannelInformationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchChannelInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelInformationResponseImplCopyWith<$Res>
    implements $ChannelInformationResponseCopyWith<$Res> {
  factory _$$ChannelInformationResponseImplCopyWith(
          _$ChannelInformationResponseImpl value,
          $Res Function(_$ChannelInformationResponseImpl) then) =
      __$$ChannelInformationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchChannelInfo> data});
}

/// @nodoc
class __$$ChannelInformationResponseImplCopyWithImpl<$Res>
    extends _$ChannelInformationResponseCopyWithImpl<$Res,
        _$ChannelInformationResponseImpl>
    implements _$$ChannelInformationResponseImplCopyWith<$Res> {
  __$$ChannelInformationResponseImplCopyWithImpl(
      _$ChannelInformationResponseImpl _value,
      $Res Function(_$ChannelInformationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChannelInformationResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchChannelInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ChannelInformationResponseImpl implements _ChannelInformationResponse {
  const _$ChannelInformationResponseImpl(
      {required final List<TwitchChannelInfo> data})
      : _data = data;

  factory _$ChannelInformationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChannelInformationResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchChannelInfo> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchChannelInfo> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChannelInformationResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelInformationResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelInformationResponseImplCopyWith<_$ChannelInformationResponseImpl>
      get copyWith => __$$ChannelInformationResponseImplCopyWithImpl<
          _$ChannelInformationResponseImpl>(this, _$identity);
}

abstract class _ChannelInformationResponse
    implements ChannelInformationResponse {
  const factory _ChannelInformationResponse(
          {required final List<TwitchChannelInfo> data}) =
      _$ChannelInformationResponseImpl;

  factory _ChannelInformationResponse.fromJson(Map<String, dynamic> json) =
      _$ChannelInformationResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchChannelInfo> get data;
  @override
  @JsonKey(ignore: true)
  _$$ChannelInformationResponseImplCopyWith<_$ChannelInformationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchCategoriesResponse _$SearchCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchCategoriesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGame> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCategoriesResponseCopyWith<SearchCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoriesResponseCopyWith<$Res> {
  factory $SearchCategoriesResponseCopyWith(SearchCategoriesResponse value,
          $Res Function(SearchCategoriesResponse) then) =
      _$SearchCategoriesResponseCopyWithImpl<$Res, SearchCategoriesResponse>;
  @useResult
  $Res call({List<TwitchGame> data});
}

/// @nodoc
class _$SearchCategoriesResponseCopyWithImpl<$Res,
        $Val extends SearchCategoriesResponse>
    implements $SearchCategoriesResponseCopyWith<$Res> {
  _$SearchCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchCategoriesResponseImplCopyWith<$Res>
    implements $SearchCategoriesResponseCopyWith<$Res> {
  factory _$$SearchCategoriesResponseImplCopyWith(
          _$SearchCategoriesResponseImpl value,
          $Res Function(_$SearchCategoriesResponseImpl) then) =
      __$$SearchCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGame> data});
}

/// @nodoc
class __$$SearchCategoriesResponseImplCopyWithImpl<$Res>
    extends _$SearchCategoriesResponseCopyWithImpl<$Res,
        _$SearchCategoriesResponseImpl>
    implements _$$SearchCategoriesResponseImplCopyWith<$Res> {
  __$$SearchCategoriesResponseImplCopyWithImpl(
      _$SearchCategoriesResponseImpl _value,
      $Res Function(_$SearchCategoriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchCategoriesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SearchCategoriesResponseImpl implements _SearchCategoriesResponse {
  const _$SearchCategoriesResponseImpl({required final List<TwitchGame> data})
      : _data = data;

  factory _$SearchCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCategoriesResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchGame> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchGame> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchCategoriesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoriesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoriesResponseImplCopyWith<_$SearchCategoriesResponseImpl>
      get copyWith => __$$SearchCategoriesResponseImplCopyWithImpl<
          _$SearchCategoriesResponseImpl>(this, _$identity);
}

abstract class _SearchCategoriesResponse implements SearchCategoriesResponse {
  const factory _SearchCategoriesResponse(
      {required final List<TwitchGame> data}) = _$SearchCategoriesResponseImpl;

  factory _SearchCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$SearchCategoriesResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGame> get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchCategoriesResponseImplCopyWith<_$SearchCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchChannelsResponse _$SearchChannelsResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchChannelsResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchChannelsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchSearchChannel> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchChannelsResponseCopyWith<SearchChannelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchChannelsResponseCopyWith<$Res> {
  factory $SearchChannelsResponseCopyWith(SearchChannelsResponse value,
          $Res Function(SearchChannelsResponse) then) =
      _$SearchChannelsResponseCopyWithImpl<$Res, SearchChannelsResponse>;
  @useResult
  $Res call({List<TwitchSearchChannel> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class _$SearchChannelsResponseCopyWithImpl<$Res,
        $Val extends SearchChannelsResponse>
    implements $SearchChannelsResponseCopyWith<$Res> {
  _$SearchChannelsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchSearchChannel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchChannelsResponseImplCopyWith<$Res>
    implements $SearchChannelsResponseCopyWith<$Res> {
  factory _$$SearchChannelsResponseImplCopyWith(
          _$SearchChannelsResponseImpl value,
          $Res Function(_$SearchChannelsResponseImpl) then) =
      __$$SearchChannelsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchSearchChannel> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$SearchChannelsResponseImplCopyWithImpl<$Res>
    extends _$SearchChannelsResponseCopyWithImpl<$Res,
        _$SearchChannelsResponseImpl>
    implements _$$SearchChannelsResponseImplCopyWith<$Res> {
  __$$SearchChannelsResponseImplCopyWithImpl(
      _$SearchChannelsResponseImpl _value,
      $Res Function(_$SearchChannelsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$SearchChannelsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchSearchChannel>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SearchChannelsResponseImpl implements _SearchChannelsResponse {
  const _$SearchChannelsResponseImpl(
      {required final List<TwitchSearchChannel> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$SearchChannelsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchChannelsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchSearchChannel> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchSearchChannel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SearchChannelsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChannelsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChannelsResponseImplCopyWith<_$SearchChannelsResponseImpl>
      get copyWith => __$$SearchChannelsResponseImplCopyWithImpl<
          _$SearchChannelsResponseImpl>(this, _$identity);
}

abstract class _SearchChannelsResponse implements SearchChannelsResponse {
  const factory _SearchChannelsResponse(
          {required final List<TwitchSearchChannel> data,
          required final Map<String, dynamic>? pagination}) =
      _$SearchChannelsResponseImpl;

  factory _SearchChannelsResponse.fromJson(Map<String, dynamic> json) =
      _$SearchChannelsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchSearchChannel> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$SearchChannelsResponseImplCopyWith<_$SearchChannelsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamsResponse _$StreamsResponseFromJson(Map<String, dynamic> json) {
  return _StreamsResponse.fromJson(json);
}

/// @nodoc
mixin _$StreamsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchStreamInfo> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreamsResponseCopyWith<StreamsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamsResponseCopyWith<$Res> {
  factory $StreamsResponseCopyWith(
          StreamsResponse value, $Res Function(StreamsResponse) then) =
      _$StreamsResponseCopyWithImpl<$Res, StreamsResponse>;
  @useResult
  $Res call({List<TwitchStreamInfo> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class _$StreamsResponseCopyWithImpl<$Res, $Val extends StreamsResponse>
    implements $StreamsResponseCopyWith<$Res> {
  _$StreamsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchStreamInfo>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamsResponseImplCopyWith<$Res>
    implements $StreamsResponseCopyWith<$Res> {
  factory _$$StreamsResponseImplCopyWith(_$StreamsResponseImpl value,
          $Res Function(_$StreamsResponseImpl) then) =
      __$$StreamsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchStreamInfo> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$StreamsResponseImplCopyWithImpl<$Res>
    extends _$StreamsResponseCopyWithImpl<$Res, _$StreamsResponseImpl>
    implements _$$StreamsResponseImplCopyWith<$Res> {
  __$$StreamsResponseImplCopyWithImpl(
      _$StreamsResponseImpl _value, $Res Function(_$StreamsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$StreamsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchStreamInfo>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$StreamsResponseImpl implements _StreamsResponse {
  const _$StreamsResponseImpl(
      {required final List<TwitchStreamInfo> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$StreamsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchStreamInfo> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchStreamInfo> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StreamsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamsResponseImplCopyWith<_$StreamsResponseImpl> get copyWith =>
      __$$StreamsResponseImplCopyWithImpl<_$StreamsResponseImpl>(
          this, _$identity);
}

abstract class _StreamsResponse implements StreamsResponse {
  const factory _StreamsResponse(
      {required final List<TwitchStreamInfo> data,
      required final Map<String, dynamic>? pagination}) = _$StreamsResponseImpl;

  factory _StreamsResponse.fromJson(Map<String, dynamic> json) =
      _$StreamsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchStreamInfo> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$StreamsResponseImplCopyWith<_$StreamsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BroadcasterSubscriptionsResponse _$BroadcasterSubscriptionsResponseFromJson(
    Map<String, dynamic> json) {
  return _BroadcasterSubscriptionsResponse.fromJson(json);
}

/// @nodoc
mixin _$BroadcasterSubscriptionsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchBroadcasterSubscription> get data =>
      throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.total}
  int get total => throw _privateConstructorUsedError;

  /// The current number of subscriber points earned by this broadcaster.
  /// Points are based on the subscription tier of each user that subscribes
  /// to this broadcaster. For example, a Tier 1 subscription is worth 1
  /// point, Tier 2 is worth 2 points, and Tier 3 is worth 6 points. The
  /// number of points determines the number of emote slots that are unlocked
  /// for the broadcaster (see [Subscriber Emote Slots](https://help.twitch.tv/s/article/subscriber-emote-guide?language=en_US#emoteslots)).
  int get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcasterSubscriptionsResponseCopyWith<BroadcasterSubscriptionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcasterSubscriptionsResponseCopyWith<$Res> {
  factory $BroadcasterSubscriptionsResponseCopyWith(
          BroadcasterSubscriptionsResponse value,
          $Res Function(BroadcasterSubscriptionsResponse) then) =
      _$BroadcasterSubscriptionsResponseCopyWithImpl<$Res,
          BroadcasterSubscriptionsResponse>;
  @useResult
  $Res call(
      {List<TwitchBroadcasterSubscription> data,
      Map<String, dynamic>? pagination,
      int total,
      int points});
}

/// @nodoc
class _$BroadcasterSubscriptionsResponseCopyWithImpl<$Res,
        $Val extends BroadcasterSubscriptionsResponse>
    implements $BroadcasterSubscriptionsResponseCopyWith<$Res> {
  _$BroadcasterSubscriptionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
    Object? total = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchBroadcasterSubscription>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BroadcasterSubscriptionsResponseImplCopyWith<$Res>
    implements $BroadcasterSubscriptionsResponseCopyWith<$Res> {
  factory _$$BroadcasterSubscriptionsResponseImplCopyWith(
          _$BroadcasterSubscriptionsResponseImpl value,
          $Res Function(_$BroadcasterSubscriptionsResponseImpl) then) =
      __$$BroadcasterSubscriptionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchBroadcasterSubscription> data,
      Map<String, dynamic>? pagination,
      int total,
      int points});
}

/// @nodoc
class __$$BroadcasterSubscriptionsResponseImplCopyWithImpl<$Res>
    extends _$BroadcasterSubscriptionsResponseCopyWithImpl<$Res,
        _$BroadcasterSubscriptionsResponseImpl>
    implements _$$BroadcasterSubscriptionsResponseImplCopyWith<$Res> {
  __$$BroadcasterSubscriptionsResponseImplCopyWithImpl(
      _$BroadcasterSubscriptionsResponseImpl _value,
      $Res Function(_$BroadcasterSubscriptionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
    Object? total = null,
    Object? points = null,
  }) {
    return _then(_$BroadcasterSubscriptionsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchBroadcasterSubscription>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$BroadcasterSubscriptionsResponseImpl
    implements _BroadcasterSubscriptionsResponse {
  const _$BroadcasterSubscriptionsResponseImpl(
      {required final List<TwitchBroadcasterSubscription> data,
      required final Map<String, dynamic>? pagination,
      required this.total,
      required this.points})
      : _data = data,
        _pagination = pagination;

  factory _$BroadcasterSubscriptionsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BroadcasterSubscriptionsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchBroadcasterSubscription> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchBroadcasterSubscription> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// {@macro twitchResponse.total}
  @override
  final int total;

  /// The current number of subscriber points earned by this broadcaster.
  /// Points are based on the subscription tier of each user that subscribes
  /// to this broadcaster. For example, a Tier 1 subscription is worth 1
  /// point, Tier 2 is worth 2 points, and Tier 3 is worth 6 points. The
  /// number of points determines the number of emote slots that are unlocked
  /// for the broadcaster (see [Subscriber Emote Slots](https://help.twitch.tv/s/article/subscriber-emote-guide?language=en_US#emoteslots)).
  @override
  final int points;

  @override
  String toString() {
    return 'BroadcasterSubscriptionsResponse(data: $data, pagination: $pagination, total: $total, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BroadcasterSubscriptionsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination),
      total,
      points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BroadcasterSubscriptionsResponseImplCopyWith<
          _$BroadcasterSubscriptionsResponseImpl>
      get copyWith => __$$BroadcasterSubscriptionsResponseImplCopyWithImpl<
          _$BroadcasterSubscriptionsResponseImpl>(this, _$identity);
}

abstract class _BroadcasterSubscriptionsResponse
    implements BroadcasterSubscriptionsResponse {
  const factory _BroadcasterSubscriptionsResponse(
      {required final List<TwitchBroadcasterSubscription> data,
      required final Map<String, dynamic>? pagination,
      required final int total,
      required final int points}) = _$BroadcasterSubscriptionsResponseImpl;

  factory _BroadcasterSubscriptionsResponse.fromJson(
          Map<String, dynamic> json) =
      _$BroadcasterSubscriptionsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchBroadcasterSubscription> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override

  /// {@macro twitchResponse.total}
  int get total;
  @override

  /// The current number of subscriber points earned by this broadcaster.
  /// Points are based on the subscription tier of each user that subscribes
  /// to this broadcaster. For example, a Tier 1 subscription is worth 1
  /// point, Tier 2 is worth 2 points, and Tier 3 is worth 6 points. The
  /// number of points determines the number of emote slots that are unlocked
  /// for the broadcaster (see [Subscriber Emote Slots](https://help.twitch.tv/s/article/subscriber-emote-guide?language=en_US#emoteslots)).
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$BroadcasterSubscriptionsResponseImplCopyWith<
          _$BroadcasterSubscriptionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheermotesResponse _$CheermotesResponseFromJson(Map<String, dynamic> json) {
  return _CheermotesResponse.fromJson(json);
}

/// @nodoc
mixin _$CheermotesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchCheermote> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheermotesResponseCopyWith<CheermotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheermotesResponseCopyWith<$Res> {
  factory $CheermotesResponseCopyWith(
          CheermotesResponse value, $Res Function(CheermotesResponse) then) =
      _$CheermotesResponseCopyWithImpl<$Res, CheermotesResponse>;
  @useResult
  $Res call({List<TwitchCheermote> data});
}

/// @nodoc
class _$CheermotesResponseCopyWithImpl<$Res, $Val extends CheermotesResponse>
    implements $CheermotesResponseCopyWith<$Res> {
  _$CheermotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCheermote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheermotesResponseImplCopyWith<$Res>
    implements $CheermotesResponseCopyWith<$Res> {
  factory _$$CheermotesResponseImplCopyWith(_$CheermotesResponseImpl value,
          $Res Function(_$CheermotesResponseImpl) then) =
      __$$CheermotesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchCheermote> data});
}

/// @nodoc
class __$$CheermotesResponseImplCopyWithImpl<$Res>
    extends _$CheermotesResponseCopyWithImpl<$Res, _$CheermotesResponseImpl>
    implements _$$CheermotesResponseImplCopyWith<$Res> {
  __$$CheermotesResponseImplCopyWithImpl(_$CheermotesResponseImpl _value,
      $Res Function(_$CheermotesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CheermotesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCheermote>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CheermotesResponseImpl implements _CheermotesResponse {
  const _$CheermotesResponseImpl({required final List<TwitchCheermote> data})
      : _data = data;

  factory _$CheermotesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheermotesResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchCheermote> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchCheermote> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CheermotesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheermotesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheermotesResponseImplCopyWith<_$CheermotesResponseImpl> get copyWith =>
      __$$CheermotesResponseImplCopyWithImpl<_$CheermotesResponseImpl>(
          this, _$identity);
}

abstract class _CheermotesResponse implements CheermotesResponse {
  const factory _CheermotesResponse(
      {required final List<TwitchCheermote> data}) = _$CheermotesResponseImpl;

  factory _CheermotesResponse.fromJson(Map<String, dynamic> json) =
      _$CheermotesResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchCheermote> get data;
  @override
  @JsonKey(ignore: true)
  _$$CheermotesResponseImplCopyWith<_$CheermotesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtensionTransactionsResponse _$ExtensionTransactionsResponseFromJson(
    Map<String, dynamic> json) {
  return _ExtensionTransactionsResponse.fromJson(json);
}

/// @nodoc
mixin _$ExtensionTransactionsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchExtensionTransaction> get data =>
      throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtensionTransactionsResponseCopyWith<ExtensionTransactionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionTransactionsResponseCopyWith<$Res> {
  factory $ExtensionTransactionsResponseCopyWith(
          ExtensionTransactionsResponse value,
          $Res Function(ExtensionTransactionsResponse) then) =
      _$ExtensionTransactionsResponseCopyWithImpl<$Res,
          ExtensionTransactionsResponse>;
  @useResult
  $Res call(
      {List<TwitchExtensionTransaction> data,
      Map<String, dynamic>? pagination});
}

/// @nodoc
class _$ExtensionTransactionsResponseCopyWithImpl<$Res,
        $Val extends ExtensionTransactionsResponse>
    implements $ExtensionTransactionsResponseCopyWith<$Res> {
  _$ExtensionTransactionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchExtensionTransaction>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtensionTransactionsResponseImplCopyWith<$Res>
    implements $ExtensionTransactionsResponseCopyWith<$Res> {
  factory _$$ExtensionTransactionsResponseImplCopyWith(
          _$ExtensionTransactionsResponseImpl value,
          $Res Function(_$ExtensionTransactionsResponseImpl) then) =
      __$$ExtensionTransactionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchExtensionTransaction> data,
      Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$ExtensionTransactionsResponseImplCopyWithImpl<$Res>
    extends _$ExtensionTransactionsResponseCopyWithImpl<$Res,
        _$ExtensionTransactionsResponseImpl>
    implements _$$ExtensionTransactionsResponseImplCopyWith<$Res> {
  __$$ExtensionTransactionsResponseImplCopyWithImpl(
      _$ExtensionTransactionsResponseImpl _value,
      $Res Function(_$ExtensionTransactionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$ExtensionTransactionsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchExtensionTransaction>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ExtensionTransactionsResponseImpl
    implements _ExtensionTransactionsResponse {
  const _$ExtensionTransactionsResponseImpl(
      {required final List<TwitchExtensionTransaction> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$ExtensionTransactionsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExtensionTransactionsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchExtensionTransaction> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchExtensionTransaction> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ExtensionTransactionsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtensionTransactionsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtensionTransactionsResponseImplCopyWith<
          _$ExtensionTransactionsResponseImpl>
      get copyWith => __$$ExtensionTransactionsResponseImplCopyWithImpl<
          _$ExtensionTransactionsResponseImpl>(this, _$identity);
}

abstract class _ExtensionTransactionsResponse
    implements ExtensionTransactionsResponse {
  const factory _ExtensionTransactionsResponse(
          {required final List<TwitchExtensionTransaction> data,
          required final Map<String, dynamic>? pagination}) =
      _$ExtensionTransactionsResponseImpl;

  factory _ExtensionTransactionsResponse.fromJson(Map<String, dynamic> json) =
      _$ExtensionTransactionsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchExtensionTransaction> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$ExtensionTransactionsResponseImplCopyWith<
          _$ExtensionTransactionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChannelEmotesResponse _$ChannelEmotesResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelEmotesResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelEmotesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchEmotes> get data => throw _privateConstructorUsedError;

  /// {@template twitchResponse.template}
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  /// {@endtemplate}
  String get template => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelEmotesResponseCopyWith<ChannelEmotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelEmotesResponseCopyWith<$Res> {
  factory $ChannelEmotesResponseCopyWith(ChannelEmotesResponse value,
          $Res Function(ChannelEmotesResponse) then) =
      _$ChannelEmotesResponseCopyWithImpl<$Res, ChannelEmotesResponse>;
  @useResult
  $Res call({List<TwitchEmotes> data, String template});
}

/// @nodoc
class _$ChannelEmotesResponseCopyWithImpl<$Res,
        $Val extends ChannelEmotesResponse>
    implements $ChannelEmotesResponseCopyWith<$Res> {
  _$ChannelEmotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelEmotesResponseImplCopyWith<$Res>
    implements $ChannelEmotesResponseCopyWith<$Res> {
  factory _$$ChannelEmotesResponseImplCopyWith(
          _$ChannelEmotesResponseImpl value,
          $Res Function(_$ChannelEmotesResponseImpl) then) =
      __$$ChannelEmotesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchEmotes> data, String template});
}

/// @nodoc
class __$$ChannelEmotesResponseImplCopyWithImpl<$Res>
    extends _$ChannelEmotesResponseCopyWithImpl<$Res,
        _$ChannelEmotesResponseImpl>
    implements _$$ChannelEmotesResponseImplCopyWith<$Res> {
  __$$ChannelEmotesResponseImplCopyWithImpl(_$ChannelEmotesResponseImpl _value,
      $Res Function(_$ChannelEmotesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$ChannelEmotesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ChannelEmotesResponseImpl implements _ChannelEmotesResponse {
  const _$ChannelEmotesResponseImpl(
      {required final List<TwitchEmotes> data, required this.template})
      : _data = data;

  factory _$ChannelEmotesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelEmotesResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchEmotes> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchEmotes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@template twitchResponse.template}
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  /// {@endtemplate}
  @override
  final String template;

  @override
  String toString() {
    return 'ChannelEmotesResponse(data: $data, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelEmotesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelEmotesResponseImplCopyWith<_$ChannelEmotesResponseImpl>
      get copyWith => __$$ChannelEmotesResponseImplCopyWithImpl<
          _$ChannelEmotesResponseImpl>(this, _$identity);
}

abstract class _ChannelEmotesResponse implements ChannelEmotesResponse {
  const factory _ChannelEmotesResponse(
      {required final List<TwitchEmotes> data,
      required final String template}) = _$ChannelEmotesResponseImpl;

  factory _ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =
      _$ChannelEmotesResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchEmotes> get data;
  @override

  /// {@template twitchResponse.template}
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  /// {@endtemplate}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$ChannelEmotesResponseImplCopyWith<_$ChannelEmotesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChannelGlobalEmotesResponse _$ChannelGlobalEmotesResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelGlobalEmotesResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelGlobalEmotesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGlobalEmotes> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.template}
  String get template => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelGlobalEmotesResponseCopyWith<ChannelGlobalEmotesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelGlobalEmotesResponseCopyWith<$Res> {
  factory $ChannelGlobalEmotesResponseCopyWith(
          ChannelGlobalEmotesResponse value,
          $Res Function(ChannelGlobalEmotesResponse) then) =
      _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
          ChannelGlobalEmotesResponse>;
  @useResult
  $Res call({List<TwitchGlobalEmotes> data, String template});
}

/// @nodoc
class _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
        $Val extends ChannelGlobalEmotesResponse>
    implements $ChannelGlobalEmotesResponseCopyWith<$Res> {
  _$ChannelGlobalEmotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGlobalEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelGlobalEmotesResponseImplCopyWith<$Res>
    implements $ChannelGlobalEmotesResponseCopyWith<$Res> {
  factory _$$ChannelGlobalEmotesResponseImplCopyWith(
          _$ChannelGlobalEmotesResponseImpl value,
          $Res Function(_$ChannelGlobalEmotesResponseImpl) then) =
      __$$ChannelGlobalEmotesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGlobalEmotes> data, String template});
}

/// @nodoc
class __$$ChannelGlobalEmotesResponseImplCopyWithImpl<$Res>
    extends _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
        _$ChannelGlobalEmotesResponseImpl>
    implements _$$ChannelGlobalEmotesResponseImplCopyWith<$Res> {
  __$$ChannelGlobalEmotesResponseImplCopyWithImpl(
      _$ChannelGlobalEmotesResponseImpl _value,
      $Res Function(_$ChannelGlobalEmotesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$ChannelGlobalEmotesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGlobalEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ChannelGlobalEmotesResponseImpl
    implements _ChannelGlobalEmotesResponse {
  const _$ChannelGlobalEmotesResponseImpl(
      {required final List<TwitchGlobalEmotes> data, required this.template})
      : _data = data;

  factory _$ChannelGlobalEmotesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChannelGlobalEmotesResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchGlobalEmotes> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchGlobalEmotes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.template}
  @override
  final String template;

  @override
  String toString() {
    return 'ChannelGlobalEmotesResponse(data: $data, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelGlobalEmotesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelGlobalEmotesResponseImplCopyWith<_$ChannelGlobalEmotesResponseImpl>
      get copyWith => __$$ChannelGlobalEmotesResponseImplCopyWithImpl<
          _$ChannelGlobalEmotesResponseImpl>(this, _$identity);
}

abstract class _ChannelGlobalEmotesResponse
    implements ChannelGlobalEmotesResponse {
  const factory _ChannelGlobalEmotesResponse(
      {required final List<TwitchGlobalEmotes> data,
      required final String template}) = _$ChannelGlobalEmotesResponseImpl;

  factory _ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =
      _$ChannelGlobalEmotesResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGlobalEmotes> get data;
  @override

  /// {@macro twitchResponse.template}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$ChannelGlobalEmotesResponseImplCopyWith<_$ChannelGlobalEmotesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EmoteSetsResponse _$EmoteSetsResponseFromJson(Map<String, dynamic> json) {
  return _EmoteSetsResponse.fromJson(json);
}

/// @nodoc
mixin _$EmoteSetsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchEmoteSets> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.template}
  String get template => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmoteSetsResponseCopyWith<EmoteSetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoteSetsResponseCopyWith<$Res> {
  factory $EmoteSetsResponseCopyWith(
          EmoteSetsResponse value, $Res Function(EmoteSetsResponse) then) =
      _$EmoteSetsResponseCopyWithImpl<$Res, EmoteSetsResponse>;
  @useResult
  $Res call({List<TwitchEmoteSets> data, String template});
}

/// @nodoc
class _$EmoteSetsResponseCopyWithImpl<$Res, $Val extends EmoteSetsResponse>
    implements $EmoteSetsResponseCopyWith<$Res> {
  _$EmoteSetsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteSets>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmoteSetsResponseImplCopyWith<$Res>
    implements $EmoteSetsResponseCopyWith<$Res> {
  factory _$$EmoteSetsResponseImplCopyWith(_$EmoteSetsResponseImpl value,
          $Res Function(_$EmoteSetsResponseImpl) then) =
      __$$EmoteSetsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchEmoteSets> data, String template});
}

/// @nodoc
class __$$EmoteSetsResponseImplCopyWithImpl<$Res>
    extends _$EmoteSetsResponseCopyWithImpl<$Res, _$EmoteSetsResponseImpl>
    implements _$$EmoteSetsResponseImplCopyWith<$Res> {
  __$$EmoteSetsResponseImplCopyWithImpl(_$EmoteSetsResponseImpl _value,
      $Res Function(_$EmoteSetsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$EmoteSetsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteSets>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$EmoteSetsResponseImpl implements _EmoteSetsResponse {
  const _$EmoteSetsResponseImpl(
      {required final List<TwitchEmoteSets> data, required this.template})
      : _data = data;

  factory _$EmoteSetsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmoteSetsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchEmoteSets> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchEmoteSets> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.template}
  @override
  final String template;

  @override
  String toString() {
    return 'EmoteSetsResponse(data: $data, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmoteSetsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmoteSetsResponseImplCopyWith<_$EmoteSetsResponseImpl> get copyWith =>
      __$$EmoteSetsResponseImplCopyWithImpl<_$EmoteSetsResponseImpl>(
          this, _$identity);
}

abstract class _EmoteSetsResponse implements EmoteSetsResponse {
  const factory _EmoteSetsResponse(
      {required final List<TwitchEmoteSets> data,
      required final String template}) = _$EmoteSetsResponseImpl;

  factory _EmoteSetsResponse.fromJson(Map<String, dynamic> json) =
      _$EmoteSetsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchEmoteSets> get data;
  @override

  /// {@macro twitchResponse.template}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$EmoteSetsResponseImplCopyWith<_$EmoteSetsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelEditorsResponse _$ChannelEditorsResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelEditorsResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelEditorsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchChannelEditor> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelEditorsResponseCopyWith<ChannelEditorsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelEditorsResponseCopyWith<$Res> {
  factory $ChannelEditorsResponseCopyWith(ChannelEditorsResponse value,
          $Res Function(ChannelEditorsResponse) then) =
      _$ChannelEditorsResponseCopyWithImpl<$Res, ChannelEditorsResponse>;
  @useResult
  $Res call({List<TwitchChannelEditor> data});
}

/// @nodoc
class _$ChannelEditorsResponseCopyWithImpl<$Res,
        $Val extends ChannelEditorsResponse>
    implements $ChannelEditorsResponseCopyWith<$Res> {
  _$ChannelEditorsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchChannelEditor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelEditorsResponseImplCopyWith<$Res>
    implements $ChannelEditorsResponseCopyWith<$Res> {
  factory _$$ChannelEditorsResponseImplCopyWith(
          _$ChannelEditorsResponseImpl value,
          $Res Function(_$ChannelEditorsResponseImpl) then) =
      __$$ChannelEditorsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchChannelEditor> data});
}

/// @nodoc
class __$$ChannelEditorsResponseImplCopyWithImpl<$Res>
    extends _$ChannelEditorsResponseCopyWithImpl<$Res,
        _$ChannelEditorsResponseImpl>
    implements _$$ChannelEditorsResponseImplCopyWith<$Res> {
  __$$ChannelEditorsResponseImplCopyWithImpl(
      _$ChannelEditorsResponseImpl _value,
      $Res Function(_$ChannelEditorsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChannelEditorsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchChannelEditor>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ChannelEditorsResponseImpl implements _ChannelEditorsResponse {
  const _$ChannelEditorsResponseImpl(
      {required final List<TwitchChannelEditor> data})
      : _data = data;

  factory _$ChannelEditorsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelEditorsResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchChannelEditor> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchChannelEditor> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChannelEditorsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelEditorsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelEditorsResponseImplCopyWith<_$ChannelEditorsResponseImpl>
      get copyWith => __$$ChannelEditorsResponseImplCopyWithImpl<
          _$ChannelEditorsResponseImpl>(this, _$identity);
}

abstract class _ChannelEditorsResponse implements ChannelEditorsResponse {
  const factory _ChannelEditorsResponse(
          {required final List<TwitchChannelEditor> data}) =
      _$ChannelEditorsResponseImpl;

  factory _ChannelEditorsResponse.fromJson(Map<String, dynamic> json) =
      _$ChannelEditorsResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchChannelEditor> get data;
  @override
  @JsonKey(ignore: true)
  _$$ChannelEditorsResponseImplCopyWith<_$ChannelEditorsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CustomRewardResponse _$CustomRewardResponseFromJson(Map<String, dynamic> json) {
  return _CustomRewardResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomRewardResponse {
  /// {@macro twitchResponse.data}
  List<TwitchCustomReward> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomRewardResponseCopyWith<CustomRewardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomRewardResponseCopyWith<$Res> {
  factory $CustomRewardResponseCopyWith(CustomRewardResponse value,
          $Res Function(CustomRewardResponse) then) =
      _$CustomRewardResponseCopyWithImpl<$Res, CustomRewardResponse>;
  @useResult
  $Res call({List<TwitchCustomReward> data});
}

/// @nodoc
class _$CustomRewardResponseCopyWithImpl<$Res,
        $Val extends CustomRewardResponse>
    implements $CustomRewardResponseCopyWith<$Res> {
  _$CustomRewardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCustomReward>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomRewardResponseImplCopyWith<$Res>
    implements $CustomRewardResponseCopyWith<$Res> {
  factory _$$CustomRewardResponseImplCopyWith(_$CustomRewardResponseImpl value,
          $Res Function(_$CustomRewardResponseImpl) then) =
      __$$CustomRewardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchCustomReward> data});
}

/// @nodoc
class __$$CustomRewardResponseImplCopyWithImpl<$Res>
    extends _$CustomRewardResponseCopyWithImpl<$Res, _$CustomRewardResponseImpl>
    implements _$$CustomRewardResponseImplCopyWith<$Res> {
  __$$CustomRewardResponseImplCopyWithImpl(_$CustomRewardResponseImpl _value,
      $Res Function(_$CustomRewardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CustomRewardResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCustomReward>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CustomRewardResponseImpl implements _CustomRewardResponse {
  const _$CustomRewardResponseImpl(
      {required final List<TwitchCustomReward> data})
      : _data = data;

  factory _$CustomRewardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomRewardResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchCustomReward> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchCustomReward> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CustomRewardResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomRewardResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomRewardResponseImplCopyWith<_$CustomRewardResponseImpl>
      get copyWith =>
          __$$CustomRewardResponseImplCopyWithImpl<_$CustomRewardResponseImpl>(
              this, _$identity);
}

abstract class _CustomRewardResponse implements CustomRewardResponse {
  const factory _CustomRewardResponse(
          {required final List<TwitchCustomReward> data}) =
      _$CustomRewardResponseImpl;

  factory _CustomRewardResponse.fromJson(Map<String, dynamic> json) =
      _$CustomRewardResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchCustomReward> get data;
  @override
  @JsonKey(ignore: true)
  _$$CustomRewardResponseImplCopyWith<_$CustomRewardResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CustomRewardRedemptionResponse _$CustomRewardRedemptionResponseFromJson(
    Map<String, dynamic> json) {
  return _CustomRewardRedemptionResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomRewardRedemptionResponse {
  /// {@macro twitchResponse.data}
  List<TwitchCustomRewardRedemption> get data =>
      throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomRewardRedemptionResponseCopyWith<CustomRewardRedemptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomRewardRedemptionResponseCopyWith<$Res> {
  factory $CustomRewardRedemptionResponseCopyWith(
          CustomRewardRedemptionResponse value,
          $Res Function(CustomRewardRedemptionResponse) then) =
      _$CustomRewardRedemptionResponseCopyWithImpl<$Res,
          CustomRewardRedemptionResponse>;
  @useResult
  $Res call(
      {List<TwitchCustomRewardRedemption> data,
      Map<String, dynamic>? pagination});
}

/// @nodoc
class _$CustomRewardRedemptionResponseCopyWithImpl<$Res,
        $Val extends CustomRewardRedemptionResponse>
    implements $CustomRewardRedemptionResponseCopyWith<$Res> {
  _$CustomRewardRedemptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCustomRewardRedemption>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomRewardRedemptionResponseImplCopyWith<$Res>
    implements $CustomRewardRedemptionResponseCopyWith<$Res> {
  factory _$$CustomRewardRedemptionResponseImplCopyWith(
          _$CustomRewardRedemptionResponseImpl value,
          $Res Function(_$CustomRewardRedemptionResponseImpl) then) =
      __$$CustomRewardRedemptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchCustomRewardRedemption> data,
      Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$CustomRewardRedemptionResponseImplCopyWithImpl<$Res>
    extends _$CustomRewardRedemptionResponseCopyWithImpl<$Res,
        _$CustomRewardRedemptionResponseImpl>
    implements _$$CustomRewardRedemptionResponseImplCopyWith<$Res> {
  __$$CustomRewardRedemptionResponseImplCopyWithImpl(
      _$CustomRewardRedemptionResponseImpl _value,
      $Res Function(_$CustomRewardRedemptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$CustomRewardRedemptionResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCustomRewardRedemption>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CustomRewardRedemptionResponseImpl
    implements _CustomRewardRedemptionResponse {
  const _$CustomRewardRedemptionResponseImpl(
      {required final List<TwitchCustomRewardRedemption> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$CustomRewardRedemptionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CustomRewardRedemptionResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchCustomRewardRedemption> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchCustomRewardRedemption> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CustomRewardRedemptionResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomRewardRedemptionResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomRewardRedemptionResponseImplCopyWith<
          _$CustomRewardRedemptionResponseImpl>
      get copyWith => __$$CustomRewardRedemptionResponseImplCopyWithImpl<
          _$CustomRewardRedemptionResponseImpl>(this, _$identity);
}

abstract class _CustomRewardRedemptionResponse
    implements CustomRewardRedemptionResponse {
  const factory _CustomRewardRedemptionResponse(
          {required final List<TwitchCustomRewardRedemption> data,
          required final Map<String, dynamic>? pagination}) =
      _$CustomRewardRedemptionResponseImpl;

  factory _CustomRewardRedemptionResponse.fromJson(Map<String, dynamic> json) =
      _$CustomRewardRedemptionResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchCustomRewardRedemption> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$CustomRewardRedemptionResponseImplCopyWith<
          _$CustomRewardRedemptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TwitchClipResponse _$TwitchClipResponseFromJson(Map<String, dynamic> json) {
  return _TwitchClipResponse.fromJson(json);
}

/// @nodoc
mixin _$TwitchClipResponse {
  /// {@macro twitchResponse.data}
  List<TwitchClip> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitchClipResponseCopyWith<TwitchClipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchClipResponseCopyWith<$Res> {
  factory $TwitchClipResponseCopyWith(
          TwitchClipResponse value, $Res Function(TwitchClipResponse) then) =
      _$TwitchClipResponseCopyWithImpl<$Res, TwitchClipResponse>;
  @useResult
  $Res call({List<TwitchClip> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class _$TwitchClipResponseCopyWithImpl<$Res, $Val extends TwitchClipResponse>
    implements $TwitchClipResponseCopyWith<$Res> {
  _$TwitchClipResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchClipResponseImplCopyWith<$Res>
    implements $TwitchClipResponseCopyWith<$Res> {
  factory _$$TwitchClipResponseImplCopyWith(_$TwitchClipResponseImpl value,
          $Res Function(_$TwitchClipResponseImpl) then) =
      __$$TwitchClipResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchClip> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$TwitchClipResponseImplCopyWithImpl<$Res>
    extends _$TwitchClipResponseCopyWithImpl<$Res, _$TwitchClipResponseImpl>
    implements _$$TwitchClipResponseImplCopyWith<$Res> {
  __$$TwitchClipResponseImplCopyWithImpl(_$TwitchClipResponseImpl _value,
      $Res Function(_$TwitchClipResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$TwitchClipResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
      pagination: freezed == pagination
          ? _value._pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TwitchClipResponseImpl implements _TwitchClipResponse {
  const _$TwitchClipResponseImpl(
      {required final List<TwitchClip> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$TwitchClipResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchClipResponseImplFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchClip> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchClip> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.pagination}
  final Map<String, dynamic>? _pagination;

  /// {@macro twitchResponse.pagination}
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TwitchClipResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchClipResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._pagination, _pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_pagination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchClipResponseImplCopyWith<_$TwitchClipResponseImpl> get copyWith =>
      __$$TwitchClipResponseImplCopyWithImpl<_$TwitchClipResponseImpl>(
          this, _$identity);
}

abstract class _TwitchClipResponse implements TwitchClipResponse {
  const factory _TwitchClipResponse(
          {required final List<TwitchClip> data,
          required final Map<String, dynamic>? pagination}) =
      _$TwitchClipResponseImpl;

  factory _TwitchClipResponse.fromJson(Map<String, dynamic> json) =
      _$TwitchClipResponseImpl.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchClip> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$TwitchClipResponseImplCopyWith<_$TwitchClipResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
