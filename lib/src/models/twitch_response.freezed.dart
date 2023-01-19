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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_StartCommercialResponseCopyWith<$Res>
    implements $StartCommercialResponseCopyWith<$Res> {
  factory _$$_StartCommercialResponseCopyWith(_$_StartCommercialResponse value,
          $Res Function(_$_StartCommercialResponse) then) =
      __$$_StartCommercialResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchStartCommercial> data});
}

/// @nodoc
class __$$_StartCommercialResponseCopyWithImpl<$Res>
    extends _$StartCommercialResponseCopyWithImpl<$Res,
        _$_StartCommercialResponse>
    implements _$$_StartCommercialResponseCopyWith<$Res> {
  __$$_StartCommercialResponseCopyWithImpl(_$_StartCommercialResponse _value,
      $Res Function(_$_StartCommercialResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_StartCommercialResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchStartCommercial>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartCommercialResponse implements _StartCommercialResponse {
  const _$_StartCommercialResponse(
      {required final List<TwitchStartCommercial> data})
      : _data = data;

  factory _$_StartCommercialResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StartCommercialResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartCommercialResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartCommercialResponseCopyWith<_$_StartCommercialResponse>
      get copyWith =>
          __$$_StartCommercialResponseCopyWithImpl<_$_StartCommercialResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartCommercialResponseToJson(
      this,
    );
  }
}

abstract class _StartCommercialResponse implements StartCommercialResponse {
  const factory _StartCommercialResponse(
          {required final List<TwitchStartCommercial> data}) =
      _$_StartCommercialResponse;

  factory _StartCommercialResponse.fromJson(Map<String, dynamic> json) =
      _$_StartCommercialResponse.fromJson;

  @override

  /// {@template twitchResponse.data}
  /// List of data from the response parsed into an object.
  /// {@endtemplate}
  List<TwitchStartCommercial> get data;
  @override
  @JsonKey(ignore: true)
  _$$_StartCommercialResponseCopyWith<_$_StartCommercialResponse>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_ExtensionAnalyticsResponseCopyWith<$Res>
    implements $ExtensionAnalyticsResponseCopyWith<$Res> {
  factory _$$_ExtensionAnalyticsResponseCopyWith(
          _$_ExtensionAnalyticsResponse value,
          $Res Function(_$_ExtensionAnalyticsResponse) then) =
      __$$_ExtensionAnalyticsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchExtensionAnalytic> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$_ExtensionAnalyticsResponseCopyWithImpl<$Res>
    extends _$ExtensionAnalyticsResponseCopyWithImpl<$Res,
        _$_ExtensionAnalyticsResponse>
    implements _$$_ExtensionAnalyticsResponseCopyWith<$Res> {
  __$$_ExtensionAnalyticsResponseCopyWithImpl(
      _$_ExtensionAnalyticsResponse _value,
      $Res Function(_$_ExtensionAnalyticsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_ExtensionAnalyticsResponse(
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
@JsonSerializable()
class _$_ExtensionAnalyticsResponse implements _ExtensionAnalyticsResponse {
  const _$_ExtensionAnalyticsResponse(
      {required final List<TwitchExtensionAnalytic> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$_ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ExtensionAnalyticsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtensionAnalyticsResponse &&
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
  _$$_ExtensionAnalyticsResponseCopyWith<_$_ExtensionAnalyticsResponse>
      get copyWith => __$$_ExtensionAnalyticsResponseCopyWithImpl<
          _$_ExtensionAnalyticsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtensionAnalyticsResponseToJson(
      this,
    );
  }
}

abstract class _ExtensionAnalyticsResponse
    implements ExtensionAnalyticsResponse {
  const factory _ExtensionAnalyticsResponse(
          {required final List<TwitchExtensionAnalytic> data,
          required final Map<String, dynamic>? pagination}) =
      _$_ExtensionAnalyticsResponse;

  factory _ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$_ExtensionAnalyticsResponse.fromJson;

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
  _$$_ExtensionAnalyticsResponseCopyWith<_$_ExtensionAnalyticsResponse>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_GameAnalyticsResponseCopyWith<$Res>
    implements $GameAnalyticsResponseCopyWith<$Res> {
  factory _$$_GameAnalyticsResponseCopyWith(_$_GameAnalyticsResponse value,
          $Res Function(_$_GameAnalyticsResponse) then) =
      __$$_GameAnalyticsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGameAnalytic> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$_GameAnalyticsResponseCopyWithImpl<$Res>
    extends _$GameAnalyticsResponseCopyWithImpl<$Res, _$_GameAnalyticsResponse>
    implements _$$_GameAnalyticsResponseCopyWith<$Res> {
  __$$_GameAnalyticsResponseCopyWithImpl(_$_GameAnalyticsResponse _value,
      $Res Function(_$_GameAnalyticsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_GameAnalyticsResponse(
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
@JsonSerializable()
class _$_GameAnalyticsResponse implements _GameAnalyticsResponse {
  const _$_GameAnalyticsResponse(
      {required final List<TwitchGameAnalytic> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$_GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GameAnalyticsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameAnalyticsResponse &&
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
  _$$_GameAnalyticsResponseCopyWith<_$_GameAnalyticsResponse> get copyWith =>
      __$$_GameAnalyticsResponseCopyWithImpl<_$_GameAnalyticsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameAnalyticsResponseToJson(
      this,
    );
  }
}

abstract class _GameAnalyticsResponse implements GameAnalyticsResponse {
  const factory _GameAnalyticsResponse(
          {required final List<TwitchGameAnalytic> data,
          required final Map<String, dynamic>? pagination}) =
      _$_GameAnalyticsResponse;

  factory _GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$_GameAnalyticsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGameAnalytic> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_GameAnalyticsResponseCopyWith<_$_GameAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_BitsLeaderboardResponseCopyWith<$Res>
    implements $BitsLeaderboardResponseCopyWith<$Res> {
  factory _$$_BitsLeaderboardResponseCopyWith(_$_BitsLeaderboardResponse value,
          $Res Function(_$_BitsLeaderboardResponse) then) =
      __$$_BitsLeaderboardResponseCopyWithImpl<$Res>;
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
class __$$_BitsLeaderboardResponseCopyWithImpl<$Res>
    extends _$BitsLeaderboardResponseCopyWithImpl<$Res,
        _$_BitsLeaderboardResponse>
    implements _$$_BitsLeaderboardResponseCopyWith<$Res> {
  __$$_BitsLeaderboardResponseCopyWithImpl(_$_BitsLeaderboardResponse _value,
      $Res Function(_$_BitsLeaderboardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dateRange = null,
    Object? total = null,
  }) {
    return _then(_$_BitsLeaderboardResponse(
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
@JsonSerializable()
class _$_BitsLeaderboardResponse implements _BitsLeaderboardResponse {
  const _$_BitsLeaderboardResponse(
      {required final List<TwitchBitsLeaderboard> data,
      @JsonKey(name: 'date_range') required this.dateRange,
      required this.total})
      : _data = data;

  factory _$_BitsLeaderboardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BitsLeaderboardResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BitsLeaderboardResponse &&
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
  _$$_BitsLeaderboardResponseCopyWith<_$_BitsLeaderboardResponse>
      get copyWith =>
          __$$_BitsLeaderboardResponseCopyWithImpl<_$_BitsLeaderboardResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BitsLeaderboardResponseToJson(
      this,
    );
  }
}

abstract class _BitsLeaderboardResponse implements BitsLeaderboardResponse {
  const factory _BitsLeaderboardResponse(
      {required final List<TwitchBitsLeaderboard> data,
      @JsonKey(name: 'date_range') required final TwitchDateRange dateRange,
      required final int total}) = _$_BitsLeaderboardResponse;

  factory _BitsLeaderboardResponse.fromJson(Map<String, dynamic> json) =
      _$_BitsLeaderboardResponse.fromJson;

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
  _$$_BitsLeaderboardResponseCopyWith<_$_BitsLeaderboardResponse>
      get copyWith => throw _privateConstructorUsedError;
}

UsersResponse _$UsersResponseFromJson(Map<String, dynamic> json) {
  return _UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersResponse {
  /// {@macro twitchResponse.data}
  List<TwitchUser> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_UsersResponseCopyWith<$Res>
    implements $UsersResponseCopyWith<$Res> {
  factory _$$_UsersResponseCopyWith(
          _$_UsersResponse value, $Res Function(_$_UsersResponse) then) =
      __$$_UsersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchUser> data});
}

/// @nodoc
class __$$_UsersResponseCopyWithImpl<$Res>
    extends _$UsersResponseCopyWithImpl<$Res, _$_UsersResponse>
    implements _$$_UsersResponseCopyWith<$Res> {
  __$$_UsersResponseCopyWithImpl(
      _$_UsersResponse _value, $Res Function(_$_UsersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UsersResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersResponse implements _UsersResponse {
  const _$_UsersResponse({required final List<TwitchUser> data}) : _data = data;

  factory _$_UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UsersResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersResponseCopyWith<_$_UsersResponse> get copyWith =>
      __$$_UsersResponseCopyWithImpl<_$_UsersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersResponseToJson(
      this,
    );
  }
}

abstract class _UsersResponse implements UsersResponse {
  const factory _UsersResponse({required final List<TwitchUser> data}) =
      _$_UsersResponse;

  factory _UsersResponse.fromJson(Map<String, dynamic> json) =
      _$_UsersResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchUser> get data;
  @override
  @JsonKey(ignore: true)
  _$$_UsersResponseCopyWith<_$_UsersResponse> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_UsersFollowsResponseCopyWith<$Res>
    implements $UsersFollowsResponseCopyWith<$Res> {
  factory _$$_UsersFollowsResponseCopyWith(_$_UsersFollowsResponse value,
          $Res Function(_$_UsersFollowsResponse) then) =
      __$$_UsersFollowsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchUserFollow> data,
      Map<String, dynamic>? pagination,
      int total});
}

/// @nodoc
class __$$_UsersFollowsResponseCopyWithImpl<$Res>
    extends _$UsersFollowsResponseCopyWithImpl<$Res, _$_UsersFollowsResponse>
    implements _$$_UsersFollowsResponseCopyWith<$Res> {
  __$$_UsersFollowsResponseCopyWithImpl(_$_UsersFollowsResponse _value,
      $Res Function(_$_UsersFollowsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
    Object? total = null,
  }) {
    return _then(_$_UsersFollowsResponse(
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
@JsonSerializable()
class _$_UsersFollowsResponse implements _UsersFollowsResponse {
  const _$_UsersFollowsResponse(
      {required final List<TwitchUserFollow> data,
      required final Map<String, dynamic>? pagination,
      required this.total})
      : _data = data,
        _pagination = pagination;

  factory _$_UsersFollowsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFollowsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersFollowsResponse &&
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
  _$$_UsersFollowsResponseCopyWith<_$_UsersFollowsResponse> get copyWith =>
      __$$_UsersFollowsResponseCopyWithImpl<_$_UsersFollowsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersFollowsResponseToJson(
      this,
    );
  }
}

abstract class _UsersFollowsResponse implements UsersFollowsResponse {
  const factory _UsersFollowsResponse(
      {required final List<TwitchUserFollow> data,
      required final Map<String, dynamic>? pagination,
      required final int total}) = _$_UsersFollowsResponse;

  factory _UsersFollowsResponse.fromJson(Map<String, dynamic> json) =
      _$_UsersFollowsResponse.fromJson;

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
  _$$_UsersFollowsResponseCopyWith<_$_UsersFollowsResponse> get copyWith =>
      throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_TopGamesResponseCopyWith<$Res>
    implements $TopGamesResponseCopyWith<$Res> {
  factory _$$_TopGamesResponseCopyWith(
          _$_TopGamesResponse value, $Res Function(_$_TopGamesResponse) then) =
      __$$_TopGamesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGame> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$_TopGamesResponseCopyWithImpl<$Res>
    extends _$TopGamesResponseCopyWithImpl<$Res, _$_TopGamesResponse>
    implements _$$_TopGamesResponseCopyWith<$Res> {
  __$$_TopGamesResponseCopyWithImpl(
      _$_TopGamesResponse _value, $Res Function(_$_TopGamesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_TopGamesResponse(
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
@JsonSerializable()
class _$_TopGamesResponse implements _TopGamesResponse {
  const _$_TopGamesResponse(
      {required final List<TwitchGame> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$_TopGamesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TopGamesResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopGamesResponse &&
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
  _$$_TopGamesResponseCopyWith<_$_TopGamesResponse> get copyWith =>
      __$$_TopGamesResponseCopyWithImpl<_$_TopGamesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopGamesResponseToJson(
      this,
    );
  }
}

abstract class _TopGamesResponse implements TopGamesResponse {
  const factory _TopGamesResponse(
      {required final List<TwitchGame> data,
      required final Map<String, dynamic>? pagination}) = _$_TopGamesResponse;

  factory _TopGamesResponse.fromJson(Map<String, dynamic> json) =
      _$_TopGamesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGame> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_TopGamesResponseCopyWith<_$_TopGamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GamesResponse _$GamesResponseFromJson(Map<String, dynamic> json) {
  return _GamesResponse.fromJson(json);
}

/// @nodoc
mixin _$GamesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGame> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_GamesResponseCopyWith<$Res>
    implements $GamesResponseCopyWith<$Res> {
  factory _$$_GamesResponseCopyWith(
          _$_GamesResponse value, $Res Function(_$_GamesResponse) then) =
      __$$_GamesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGame> data});
}

/// @nodoc
class __$$_GamesResponseCopyWithImpl<$Res>
    extends _$GamesResponseCopyWithImpl<$Res, _$_GamesResponse>
    implements _$$_GamesResponseCopyWith<$Res> {
  __$$_GamesResponseCopyWithImpl(
      _$_GamesResponse _value, $Res Function(_$_GamesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GamesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GamesResponse implements _GamesResponse {
  const _$_GamesResponse({required final List<TwitchGame> data}) : _data = data;

  factory _$_GamesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GamesResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GamesResponseCopyWith<_$_GamesResponse> get copyWith =>
      __$$_GamesResponseCopyWithImpl<_$_GamesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamesResponseToJson(
      this,
    );
  }
}

abstract class _GamesResponse implements GamesResponse {
  const factory _GamesResponse({required final List<TwitchGame> data}) =
      _$_GamesResponse;

  factory _GamesResponse.fromJson(Map<String, dynamic> json) =
      _$_GamesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGame> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GamesResponseCopyWith<_$_GamesResponse> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_ChannelInformationResponseCopyWith<$Res>
    implements $ChannelInformationResponseCopyWith<$Res> {
  factory _$$_ChannelInformationResponseCopyWith(
          _$_ChannelInformationResponse value,
          $Res Function(_$_ChannelInformationResponse) then) =
      __$$_ChannelInformationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchChannelInfo> data});
}

/// @nodoc
class __$$_ChannelInformationResponseCopyWithImpl<$Res>
    extends _$ChannelInformationResponseCopyWithImpl<$Res,
        _$_ChannelInformationResponse>
    implements _$$_ChannelInformationResponseCopyWith<$Res> {
  __$$_ChannelInformationResponseCopyWithImpl(
      _$_ChannelInformationResponse _value,
      $Res Function(_$_ChannelInformationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChannelInformationResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchChannelInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelInformationResponse implements _ChannelInformationResponse {
  const _$_ChannelInformationResponse(
      {required final List<TwitchChannelInfo> data})
      : _data = data;

  factory _$_ChannelInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelInformationResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelInformationResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelInformationResponseCopyWith<_$_ChannelInformationResponse>
      get copyWith => __$$_ChannelInformationResponseCopyWithImpl<
          _$_ChannelInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelInformationResponseToJson(
      this,
    );
  }
}

abstract class _ChannelInformationResponse
    implements ChannelInformationResponse {
  const factory _ChannelInformationResponse(
          {required final List<TwitchChannelInfo> data}) =
      _$_ChannelInformationResponse;

  factory _ChannelInformationResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelInformationResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchChannelInfo> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelInformationResponseCopyWith<_$_ChannelInformationResponse>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_SearchCategoriesResponseCopyWith<$Res>
    implements $SearchCategoriesResponseCopyWith<$Res> {
  factory _$$_SearchCategoriesResponseCopyWith(
          _$_SearchCategoriesResponse value,
          $Res Function(_$_SearchCategoriesResponse) then) =
      __$$_SearchCategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGame> data});
}

/// @nodoc
class __$$_SearchCategoriesResponseCopyWithImpl<$Res>
    extends _$SearchCategoriesResponseCopyWithImpl<$Res,
        _$_SearchCategoriesResponse>
    implements _$$_SearchCategoriesResponseCopyWith<$Res> {
  __$$_SearchCategoriesResponseCopyWithImpl(_$_SearchCategoriesResponse _value,
      $Res Function(_$_SearchCategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SearchCategoriesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGame>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchCategoriesResponse implements _SearchCategoriesResponse {
  const _$_SearchCategoriesResponse({required final List<TwitchGame> data})
      : _data = data;

  factory _$_SearchCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCategoriesResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCategoriesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCategoriesResponseCopyWith<_$_SearchCategoriesResponse>
      get copyWith => __$$_SearchCategoriesResponseCopyWithImpl<
          _$_SearchCategoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCategoriesResponseToJson(
      this,
    );
  }
}

abstract class _SearchCategoriesResponse implements SearchCategoriesResponse {
  const factory _SearchCategoriesResponse(
      {required final List<TwitchGame> data}) = _$_SearchCategoriesResponse;

  factory _SearchCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchCategoriesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGame> get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCategoriesResponseCopyWith<_$_SearchCategoriesResponse>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_SearchChannelsResponseCopyWith<$Res>
    implements $SearchChannelsResponseCopyWith<$Res> {
  factory _$$_SearchChannelsResponseCopyWith(_$_SearchChannelsResponse value,
          $Res Function(_$_SearchChannelsResponse) then) =
      __$$_SearchChannelsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchSearchChannel> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$_SearchChannelsResponseCopyWithImpl<$Res>
    extends _$SearchChannelsResponseCopyWithImpl<$Res,
        _$_SearchChannelsResponse>
    implements _$$_SearchChannelsResponseCopyWith<$Res> {
  __$$_SearchChannelsResponseCopyWithImpl(_$_SearchChannelsResponse _value,
      $Res Function(_$_SearchChannelsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_SearchChannelsResponse(
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
@JsonSerializable()
class _$_SearchChannelsResponse implements _SearchChannelsResponse {
  const _$_SearchChannelsResponse(
      {required final List<TwitchSearchChannel> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$_SearchChannelsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchChannelsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchChannelsResponse &&
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
  _$$_SearchChannelsResponseCopyWith<_$_SearchChannelsResponse> get copyWith =>
      __$$_SearchChannelsResponseCopyWithImpl<_$_SearchChannelsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchChannelsResponseToJson(
      this,
    );
  }
}

abstract class _SearchChannelsResponse implements SearchChannelsResponse {
  const factory _SearchChannelsResponse(
          {required final List<TwitchSearchChannel> data,
          required final Map<String, dynamic>? pagination}) =
      _$_SearchChannelsResponse;

  factory _SearchChannelsResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchChannelsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchSearchChannel> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_SearchChannelsResponseCopyWith<_$_SearchChannelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_StreamsResponseCopyWith<$Res>
    implements $StreamsResponseCopyWith<$Res> {
  factory _$$_StreamsResponseCopyWith(
          _$_StreamsResponse value, $Res Function(_$_StreamsResponse) then) =
      __$$_StreamsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchStreamInfo> data, Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$_StreamsResponseCopyWithImpl<$Res>
    extends _$StreamsResponseCopyWithImpl<$Res, _$_StreamsResponse>
    implements _$$_StreamsResponseCopyWith<$Res> {
  __$$_StreamsResponseCopyWithImpl(
      _$_StreamsResponse _value, $Res Function(_$_StreamsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_StreamsResponse(
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
@JsonSerializable()
class _$_StreamsResponse implements _StreamsResponse {
  const _$_StreamsResponse(
      {required final List<TwitchStreamInfo> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$_StreamsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StreamsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamsResponse &&
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
  _$$_StreamsResponseCopyWith<_$_StreamsResponse> get copyWith =>
      __$$_StreamsResponseCopyWithImpl<_$_StreamsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamsResponseToJson(
      this,
    );
  }
}

abstract class _StreamsResponse implements StreamsResponse {
  const factory _StreamsResponse(
      {required final List<TwitchStreamInfo> data,
      required final Map<String, dynamic>? pagination}) = _$_StreamsResponse;

  factory _StreamsResponse.fromJson(Map<String, dynamic> json) =
      _$_StreamsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchStreamInfo> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_StreamsResponseCopyWith<_$_StreamsResponse> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_BroadcasterSubscriptionsResponseCopyWith<$Res>
    implements $BroadcasterSubscriptionsResponseCopyWith<$Res> {
  factory _$$_BroadcasterSubscriptionsResponseCopyWith(
          _$_BroadcasterSubscriptionsResponse value,
          $Res Function(_$_BroadcasterSubscriptionsResponse) then) =
      __$$_BroadcasterSubscriptionsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchBroadcasterSubscription> data,
      Map<String, dynamic>? pagination,
      int total,
      int points});
}

/// @nodoc
class __$$_BroadcasterSubscriptionsResponseCopyWithImpl<$Res>
    extends _$BroadcasterSubscriptionsResponseCopyWithImpl<$Res,
        _$_BroadcasterSubscriptionsResponse>
    implements _$$_BroadcasterSubscriptionsResponseCopyWith<$Res> {
  __$$_BroadcasterSubscriptionsResponseCopyWithImpl(
      _$_BroadcasterSubscriptionsResponse _value,
      $Res Function(_$_BroadcasterSubscriptionsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
    Object? total = null,
    Object? points = null,
  }) {
    return _then(_$_BroadcasterSubscriptionsResponse(
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
@JsonSerializable()
class _$_BroadcasterSubscriptionsResponse
    implements _BroadcasterSubscriptionsResponse {
  const _$_BroadcasterSubscriptionsResponse(
      {required final List<TwitchBroadcasterSubscription> data,
      required final Map<String, dynamic>? pagination,
      required this.total,
      required this.points})
      : _data = data,
        _pagination = pagination;

  factory _$_BroadcasterSubscriptionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_BroadcasterSubscriptionsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcasterSubscriptionsResponse &&
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
  _$$_BroadcasterSubscriptionsResponseCopyWith<
          _$_BroadcasterSubscriptionsResponse>
      get copyWith => __$$_BroadcasterSubscriptionsResponseCopyWithImpl<
          _$_BroadcasterSubscriptionsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcasterSubscriptionsResponseToJson(
      this,
    );
  }
}

abstract class _BroadcasterSubscriptionsResponse
    implements BroadcasterSubscriptionsResponse {
  const factory _BroadcasterSubscriptionsResponse(
      {required final List<TwitchBroadcasterSubscription> data,
      required final Map<String, dynamic>? pagination,
      required final int total,
      required final int points}) = _$_BroadcasterSubscriptionsResponse;

  factory _BroadcasterSubscriptionsResponse.fromJson(
      Map<String, dynamic> json) = _$_BroadcasterSubscriptionsResponse.fromJson;

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
  _$$_BroadcasterSubscriptionsResponseCopyWith<
          _$_BroadcasterSubscriptionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

CheermotesResponse _$CheermotesResponseFromJson(Map<String, dynamic> json) {
  return _CheermotesResponse.fromJson(json);
}

/// @nodoc
mixin _$CheermotesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchCheermote> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_CheermotesResponseCopyWith<$Res>
    implements $CheermotesResponseCopyWith<$Res> {
  factory _$$_CheermotesResponseCopyWith(_$_CheermotesResponse value,
          $Res Function(_$_CheermotesResponse) then) =
      __$$_CheermotesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchCheermote> data});
}

/// @nodoc
class __$$_CheermotesResponseCopyWithImpl<$Res>
    extends _$CheermotesResponseCopyWithImpl<$Res, _$_CheermotesResponse>
    implements _$$_CheermotesResponseCopyWith<$Res> {
  __$$_CheermotesResponseCopyWithImpl(
      _$_CheermotesResponse _value, $Res Function(_$_CheermotesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CheermotesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchCheermote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheermotesResponse implements _CheermotesResponse {
  const _$_CheermotesResponse({required final List<TwitchCheermote> data})
      : _data = data;

  factory _$_CheermotesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CheermotesResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheermotesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheermotesResponseCopyWith<_$_CheermotesResponse> get copyWith =>
      __$$_CheermotesResponseCopyWithImpl<_$_CheermotesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheermotesResponseToJson(
      this,
    );
  }
}

abstract class _CheermotesResponse implements CheermotesResponse {
  const factory _CheermotesResponse(
      {required final List<TwitchCheermote> data}) = _$_CheermotesResponse;

  factory _CheermotesResponse.fromJson(Map<String, dynamic> json) =
      _$_CheermotesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchCheermote> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CheermotesResponseCopyWith<_$_CheermotesResponse> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_ExtensionTransactionsResponseCopyWith<$Res>
    implements $ExtensionTransactionsResponseCopyWith<$Res> {
  factory _$$_ExtensionTransactionsResponseCopyWith(
          _$_ExtensionTransactionsResponse value,
          $Res Function(_$_ExtensionTransactionsResponse) then) =
      __$$_ExtensionTransactionsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TwitchExtensionTransaction> data,
      Map<String, dynamic>? pagination});
}

/// @nodoc
class __$$_ExtensionTransactionsResponseCopyWithImpl<$Res>
    extends _$ExtensionTransactionsResponseCopyWithImpl<$Res,
        _$_ExtensionTransactionsResponse>
    implements _$$_ExtensionTransactionsResponseCopyWith<$Res> {
  __$$_ExtensionTransactionsResponseCopyWithImpl(
      _$_ExtensionTransactionsResponse _value,
      $Res Function(_$_ExtensionTransactionsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_ExtensionTransactionsResponse(
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
@JsonSerializable()
class _$_ExtensionTransactionsResponse
    implements _ExtensionTransactionsResponse {
  const _$_ExtensionTransactionsResponse(
      {required final List<TwitchExtensionTransaction> data,
      required final Map<String, dynamic>? pagination})
      : _data = data,
        _pagination = pagination;

  factory _$_ExtensionTransactionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_ExtensionTransactionsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtensionTransactionsResponse &&
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
  _$$_ExtensionTransactionsResponseCopyWith<_$_ExtensionTransactionsResponse>
      get copyWith => __$$_ExtensionTransactionsResponseCopyWithImpl<
          _$_ExtensionTransactionsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtensionTransactionsResponseToJson(
      this,
    );
  }
}

abstract class _ExtensionTransactionsResponse
    implements ExtensionTransactionsResponse {
  const factory _ExtensionTransactionsResponse(
          {required final List<TwitchExtensionTransaction> data,
          required final Map<String, dynamic>? pagination}) =
      _$_ExtensionTransactionsResponse;

  factory _ExtensionTransactionsResponse.fromJson(Map<String, dynamic> json) =
      _$_ExtensionTransactionsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchExtensionTransaction> get data;
  @override

  /// {@macro twitchResponse.pagination}
  Map<String, dynamic>? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_ExtensionTransactionsResponseCopyWith<_$_ExtensionTransactionsResponse>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_ChannelEmotesResponseCopyWith<$Res>
    implements $ChannelEmotesResponseCopyWith<$Res> {
  factory _$$_ChannelEmotesResponseCopyWith(_$_ChannelEmotesResponse value,
          $Res Function(_$_ChannelEmotesResponse) then) =
      __$$_ChannelEmotesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchEmotes> data, String template});
}

/// @nodoc
class __$$_ChannelEmotesResponseCopyWithImpl<$Res>
    extends _$ChannelEmotesResponseCopyWithImpl<$Res, _$_ChannelEmotesResponse>
    implements _$$_ChannelEmotesResponseCopyWith<$Res> {
  __$$_ChannelEmotesResponseCopyWithImpl(_$_ChannelEmotesResponse _value,
      $Res Function(_$_ChannelEmotesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$_ChannelEmotesResponse(
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
@JsonSerializable()
class _$_ChannelEmotesResponse implements _ChannelEmotesResponse {
  const _$_ChannelEmotesResponse(
      {required final List<TwitchEmotes> data, required this.template})
      : _data = data;

  factory _$_ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelEmotesResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelEmotesResponse &&
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
  _$$_ChannelEmotesResponseCopyWith<_$_ChannelEmotesResponse> get copyWith =>
      __$$_ChannelEmotesResponseCopyWithImpl<_$_ChannelEmotesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelEmotesResponseToJson(
      this,
    );
  }
}

abstract class _ChannelEmotesResponse implements ChannelEmotesResponse {
  const factory _ChannelEmotesResponse(
      {required final List<TwitchEmotes> data,
      required final String template}) = _$_ChannelEmotesResponse;

  factory _ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelEmotesResponse.fromJson;

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
  _$$_ChannelEmotesResponseCopyWith<_$_ChannelEmotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_ChannelGlobalEmotesResponseCopyWith<$Res>
    implements $ChannelGlobalEmotesResponseCopyWith<$Res> {
  factory _$$_ChannelGlobalEmotesResponseCopyWith(
          _$_ChannelGlobalEmotesResponse value,
          $Res Function(_$_ChannelGlobalEmotesResponse) then) =
      __$$_ChannelGlobalEmotesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGlobalEmotes> data, String template});
}

/// @nodoc
class __$$_ChannelGlobalEmotesResponseCopyWithImpl<$Res>
    extends _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
        _$_ChannelGlobalEmotesResponse>
    implements _$$_ChannelGlobalEmotesResponseCopyWith<$Res> {
  __$$_ChannelGlobalEmotesResponseCopyWithImpl(
      _$_ChannelGlobalEmotesResponse _value,
      $Res Function(_$_ChannelGlobalEmotesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$_ChannelGlobalEmotesResponse(
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
@JsonSerializable()
class _$_ChannelGlobalEmotesResponse implements _ChannelGlobalEmotesResponse {
  const _$_ChannelGlobalEmotesResponse(
      {required final List<TwitchGlobalEmotes> data, required this.template})
      : _data = data;

  factory _$_ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelGlobalEmotesResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelGlobalEmotesResponse &&
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
  _$$_ChannelGlobalEmotesResponseCopyWith<_$_ChannelGlobalEmotesResponse>
      get copyWith => __$$_ChannelGlobalEmotesResponseCopyWithImpl<
          _$_ChannelGlobalEmotesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelGlobalEmotesResponseToJson(
      this,
    );
  }
}

abstract class _ChannelGlobalEmotesResponse
    implements ChannelGlobalEmotesResponse {
  const factory _ChannelGlobalEmotesResponse(
      {required final List<TwitchGlobalEmotes> data,
      required final String template}) = _$_ChannelGlobalEmotesResponse;

  factory _ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelGlobalEmotesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGlobalEmotes> get data;
  @override

  /// {@macro twitchResponse.template}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelGlobalEmotesResponseCopyWith<_$_ChannelGlobalEmotesResponse>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_EmoteSetsResponseCopyWith<$Res>
    implements $EmoteSetsResponseCopyWith<$Res> {
  factory _$$_EmoteSetsResponseCopyWith(_$_EmoteSetsResponse value,
          $Res Function(_$_EmoteSetsResponse) then) =
      __$$_EmoteSetsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchEmoteSets> data, String template});
}

/// @nodoc
class __$$_EmoteSetsResponseCopyWithImpl<$Res>
    extends _$EmoteSetsResponseCopyWithImpl<$Res, _$_EmoteSetsResponse>
    implements _$$_EmoteSetsResponseCopyWith<$Res> {
  __$$_EmoteSetsResponseCopyWithImpl(
      _$_EmoteSetsResponse _value, $Res Function(_$_EmoteSetsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$_EmoteSetsResponse(
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
@JsonSerializable()
class _$_EmoteSetsResponse implements _EmoteSetsResponse {
  const _$_EmoteSetsResponse(
      {required final List<TwitchEmoteSets> data, required this.template})
      : _data = data;

  factory _$_EmoteSetsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmoteSetsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmoteSetsResponse &&
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
  _$$_EmoteSetsResponseCopyWith<_$_EmoteSetsResponse> get copyWith =>
      __$$_EmoteSetsResponseCopyWithImpl<_$_EmoteSetsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmoteSetsResponseToJson(
      this,
    );
  }
}

abstract class _EmoteSetsResponse implements EmoteSetsResponse {
  const factory _EmoteSetsResponse(
      {required final List<TwitchEmoteSets> data,
      required final String template}) = _$_EmoteSetsResponse;

  factory _EmoteSetsResponse.fromJson(Map<String, dynamic> json) =
      _$_EmoteSetsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchEmoteSets> get data;
  @override

  /// {@macro twitchResponse.template}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$_EmoteSetsResponseCopyWith<_$_EmoteSetsResponse> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_ChannelEditorsResponseCopyWith<$Res>
    implements $ChannelEditorsResponseCopyWith<$Res> {
  factory _$$_ChannelEditorsResponseCopyWith(_$_ChannelEditorsResponse value,
          $Res Function(_$_ChannelEditorsResponse) then) =
      __$$_ChannelEditorsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchChannelEditor> data});
}

/// @nodoc
class __$$_ChannelEditorsResponseCopyWithImpl<$Res>
    extends _$ChannelEditorsResponseCopyWithImpl<$Res,
        _$_ChannelEditorsResponse>
    implements _$$_ChannelEditorsResponseCopyWith<$Res> {
  __$$_ChannelEditorsResponseCopyWithImpl(_$_ChannelEditorsResponse _value,
      $Res Function(_$_ChannelEditorsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChannelEditorsResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchChannelEditor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelEditorsResponse implements _ChannelEditorsResponse {
  const _$_ChannelEditorsResponse(
      {required final List<TwitchChannelEditor> data})
      : _data = data;

  factory _$_ChannelEditorsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelEditorsResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelEditorsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelEditorsResponseCopyWith<_$_ChannelEditorsResponse> get copyWith =>
      __$$_ChannelEditorsResponseCopyWithImpl<_$_ChannelEditorsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelEditorsResponseToJson(
      this,
    );
  }
}

abstract class _ChannelEditorsResponse implements ChannelEditorsResponse {
  const factory _ChannelEditorsResponse(
          {required final List<TwitchChannelEditor> data}) =
      _$_ChannelEditorsResponse;

  factory _ChannelEditorsResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelEditorsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchChannelEditor> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelEditorsResponseCopyWith<_$_ChannelEditorsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
