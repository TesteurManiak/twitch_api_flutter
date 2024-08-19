// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_bits_leaderboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchBitsLeaderboard _$TwitchBitsLeaderboardFromJson(
    Map<String, dynamic> json) {
  return _TwitchBitsLeaderboard.fromJson(json);
}

/// @nodoc
mixin _$TwitchBitsLeaderboard {
  /// ID of the user (viewer) in the leaderboard entry.
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// User login name.
  @JsonKey(name: 'user_login')
  String get userLogin => throw _privateConstructorUsedError;

  /// Display name corresponding to `userId`.
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;

  /// Leaderboard rank of the user.
  int get rank => throw _privateConstructorUsedError;

  /// Leaderboard score (number of Bits) of the user.
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchBitsLeaderboardCopyWith<TwitchBitsLeaderboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchBitsLeaderboardCopyWith<$Res> {
  factory $TwitchBitsLeaderboardCopyWith(TwitchBitsLeaderboard value,
          $Res Function(TwitchBitsLeaderboard) then) =
      _$TwitchBitsLeaderboardCopyWithImpl<$Res, TwitchBitsLeaderboard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_login') String userLogin,
      @JsonKey(name: 'user_name') String userName,
      int rank,
      int score});
}

/// @nodoc
class _$TwitchBitsLeaderboardCopyWithImpl<$Res,
        $Val extends TwitchBitsLeaderboard>
    implements $TwitchBitsLeaderboardCopyWith<$Res> {
  _$TwitchBitsLeaderboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userLogin = null,
    Object? userName = null,
    Object? rank = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchBitsLeaderboardImplCopyWith<$Res>
    implements $TwitchBitsLeaderboardCopyWith<$Res> {
  factory _$$TwitchBitsLeaderboardImplCopyWith(
          _$TwitchBitsLeaderboardImpl value,
          $Res Function(_$TwitchBitsLeaderboardImpl) then) =
      __$$TwitchBitsLeaderboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_login') String userLogin,
      @JsonKey(name: 'user_name') String userName,
      int rank,
      int score});
}

/// @nodoc
class __$$TwitchBitsLeaderboardImplCopyWithImpl<$Res>
    extends _$TwitchBitsLeaderboardCopyWithImpl<$Res,
        _$TwitchBitsLeaderboardImpl>
    implements _$$TwitchBitsLeaderboardImplCopyWith<$Res> {
  __$$TwitchBitsLeaderboardImplCopyWithImpl(_$TwitchBitsLeaderboardImpl _value,
      $Res Function(_$TwitchBitsLeaderboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userLogin = null,
    Object? userName = null,
    Object? rank = null,
    Object? score = null,
  }) {
    return _then(_$TwitchBitsLeaderboardImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchBitsLeaderboardImpl implements _TwitchBitsLeaderboard {
  const _$TwitchBitsLeaderboardImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_login') required this.userLogin,
      @JsonKey(name: 'user_name') required this.userName,
      required this.rank,
      required this.score});

  factory _$TwitchBitsLeaderboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchBitsLeaderboardImplFromJson(json);

  /// ID of the user (viewer) in the leaderboard entry.
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// User login name.
  @override
  @JsonKey(name: 'user_login')
  final String userLogin;

  /// Display name corresponding to `userId`.
  @override
  @JsonKey(name: 'user_name')
  final String userName;

  /// Leaderboard rank of the user.
  @override
  final int rank;

  /// Leaderboard score (number of Bits) of the user.
  @override
  final int score;

  @override
  String toString() {
    return 'TwitchBitsLeaderboard(userId: $userId, userLogin: $userLogin, userName: $userName, rank: $rank, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchBitsLeaderboardImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userLogin, userName, rank, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchBitsLeaderboardImplCopyWith<_$TwitchBitsLeaderboardImpl>
      get copyWith => __$$TwitchBitsLeaderboardImplCopyWithImpl<
          _$TwitchBitsLeaderboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchBitsLeaderboardImplToJson(
      this,
    );
  }
}

abstract class _TwitchBitsLeaderboard implements TwitchBitsLeaderboard {
  const factory _TwitchBitsLeaderboard(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'user_login') required final String userLogin,
      @JsonKey(name: 'user_name') required final String userName,
      required final int rank,
      required final int score}) = _$TwitchBitsLeaderboardImpl;

  factory _TwitchBitsLeaderboard.fromJson(Map<String, dynamic> json) =
      _$TwitchBitsLeaderboardImpl.fromJson;

  @override

  /// ID of the user (viewer) in the leaderboard entry.
  @JsonKey(name: 'user_id')
  String get userId;
  @override

  /// User login name.
  @JsonKey(name: 'user_login')
  String get userLogin;
  @override

  /// Display name corresponding to `userId`.
  @JsonKey(name: 'user_name')
  String get userName;
  @override

  /// Leaderboard rank of the user.
  int get rank;
  @override

  /// Leaderboard score (number of Bits) of the user.
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$TwitchBitsLeaderboardImplCopyWith<_$TwitchBitsLeaderboardImpl>
      get copyWith => throw _privateConstructorUsedError;
}
