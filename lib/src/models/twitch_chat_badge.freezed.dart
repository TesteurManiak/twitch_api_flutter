// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_chat_badge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitchChatBadge _$TwitchChatBadgeFromJson(Map<String, dynamic> json) {
  return _TwitchChatBadge.fromJson(json);
}

/// @nodoc
mixin _$TwitchChatBadge {
  /// ID for the chat badge set.
  @JsonKey(name: 'set_id')
  String get setId => throw _privateConstructorUsedError;
  List<BadgeVersion> get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchChatBadgeCopyWith<TwitchChatBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchChatBadgeCopyWith<$Res> {
  factory $TwitchChatBadgeCopyWith(
          TwitchChatBadge value, $Res Function(TwitchChatBadge) then) =
      _$TwitchChatBadgeCopyWithImpl<$Res, TwitchChatBadge>;
  @useResult
  $Res call(
      {@JsonKey(name: 'set_id') String setId, List<BadgeVersion> versions});
}

/// @nodoc
class _$TwitchChatBadgeCopyWithImpl<$Res, $Val extends TwitchChatBadge>
    implements $TwitchChatBadgeCopyWith<$Res> {
  _$TwitchChatBadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setId = null,
    Object? versions = null,
  }) {
    return _then(_value.copyWith(
      setId: null == setId
          ? _value.setId
          : setId // ignore: cast_nullable_to_non_nullable
              as String,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<BadgeVersion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchChatBadgeCopyWith<$Res>
    implements $TwitchChatBadgeCopyWith<$Res> {
  factory _$$_TwitchChatBadgeCopyWith(
          _$_TwitchChatBadge value, $Res Function(_$_TwitchChatBadge) then) =
      __$$_TwitchChatBadgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'set_id') String setId, List<BadgeVersion> versions});
}

/// @nodoc
class __$$_TwitchChatBadgeCopyWithImpl<$Res>
    extends _$TwitchChatBadgeCopyWithImpl<$Res, _$_TwitchChatBadge>
    implements _$$_TwitchChatBadgeCopyWith<$Res> {
  __$$_TwitchChatBadgeCopyWithImpl(
      _$_TwitchChatBadge _value, $Res Function(_$_TwitchChatBadge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setId = null,
    Object? versions = null,
  }) {
    return _then(_$_TwitchChatBadge(
      setId: null == setId
          ? _value.setId
          : setId // ignore: cast_nullable_to_non_nullable
              as String,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<BadgeVersion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchChatBadge implements _TwitchChatBadge {
  const _$_TwitchChatBadge(
      {@JsonKey(name: 'set_id') required this.setId,
      required final List<BadgeVersion> versions})
      : _versions = versions;

  factory _$_TwitchChatBadge.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchChatBadgeFromJson(json);

  /// ID for the chat badge set.
  @override
  @JsonKey(name: 'set_id')
  final String setId;
  final List<BadgeVersion> _versions;
  @override
  List<BadgeVersion> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  @override
  String toString() {
    return 'TwitchChatBadge(setId: $setId, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchChatBadge &&
            (identical(other.setId, setId) || other.setId == setId) &&
            const DeepCollectionEquality().equals(other._versions, _versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, setId, const DeepCollectionEquality().hash(_versions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchChatBadgeCopyWith<_$_TwitchChatBadge> get copyWith =>
      __$$_TwitchChatBadgeCopyWithImpl<_$_TwitchChatBadge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchChatBadgeToJson(
      this,
    );
  }
}

abstract class _TwitchChatBadge implements TwitchChatBadge {
  const factory _TwitchChatBadge(
      {@JsonKey(name: 'set_id') required final String setId,
      required final List<BadgeVersion> versions}) = _$_TwitchChatBadge;

  factory _TwitchChatBadge.fromJson(Map<String, dynamic> json) =
      _$_TwitchChatBadge.fromJson;

  @override

  /// ID for the chat badge set.
  @JsonKey(name: 'set_id')
  String get setId;
  @override
  List<BadgeVersion> get versions;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchChatBadgeCopyWith<_$_TwitchChatBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

BadgeVersion _$BadgeVersionFromJson(Map<String, dynamic> json) {
  return _BadgeVersion.fromJson(json);
}

/// @nodoc
mixin _$BadgeVersion {
  /// ID of the chat badge version.
  String get id => throw _privateConstructorUsedError;

  /// Small image URL.
  @JsonKey(name: 'image_url_1x')
  String get smallImageUrl => throw _privateConstructorUsedError;

  /// Medium image URL.
  @JsonKey(name: 'image_url_2x')
  String get mediumImageUrl => throw _privateConstructorUsedError;

  /// Large image URL.
  @JsonKey(name: 'image_url_4x')
  String get largeImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeVersionCopyWith<BadgeVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeVersionCopyWith<$Res> {
  factory $BadgeVersionCopyWith(
          BadgeVersion value, $Res Function(BadgeVersion) then) =
      _$BadgeVersionCopyWithImpl<$Res, BadgeVersion>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'image_url_1x') String smallImageUrl,
      @JsonKey(name: 'image_url_2x') String mediumImageUrl,
      @JsonKey(name: 'image_url_4x') String largeImageUrl});
}

/// @nodoc
class _$BadgeVersionCopyWithImpl<$Res, $Val extends BadgeVersion>
    implements $BadgeVersionCopyWith<$Res> {
  _$BadgeVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? smallImageUrl = null,
    Object? mediumImageUrl = null,
    Object? largeImageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      smallImageUrl: null == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrl: null == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeImageUrl: null == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadgeVersionCopyWith<$Res>
    implements $BadgeVersionCopyWith<$Res> {
  factory _$$_BadgeVersionCopyWith(
          _$_BadgeVersion value, $Res Function(_$_BadgeVersion) then) =
      __$$_BadgeVersionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'image_url_1x') String smallImageUrl,
      @JsonKey(name: 'image_url_2x') String mediumImageUrl,
      @JsonKey(name: 'image_url_4x') String largeImageUrl});
}

/// @nodoc
class __$$_BadgeVersionCopyWithImpl<$Res>
    extends _$BadgeVersionCopyWithImpl<$Res, _$_BadgeVersion>
    implements _$$_BadgeVersionCopyWith<$Res> {
  __$$_BadgeVersionCopyWithImpl(
      _$_BadgeVersion _value, $Res Function(_$_BadgeVersion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? smallImageUrl = null,
    Object? mediumImageUrl = null,
    Object? largeImageUrl = null,
  }) {
    return _then(_$_BadgeVersion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      smallImageUrl: null == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrl: null == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeImageUrl: null == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BadgeVersion implements _BadgeVersion {
  const _$_BadgeVersion(
      {required this.id,
      @JsonKey(name: 'image_url_1x') required this.smallImageUrl,
      @JsonKey(name: 'image_url_2x') required this.mediumImageUrl,
      @JsonKey(name: 'image_url_4x') required this.largeImageUrl});

  factory _$_BadgeVersion.fromJson(Map<String, dynamic> json) =>
      _$$_BadgeVersionFromJson(json);

  /// ID of the chat badge version.
  @override
  final String id;

  /// Small image URL.
  @override
  @JsonKey(name: 'image_url_1x')
  final String smallImageUrl;

  /// Medium image URL.
  @override
  @JsonKey(name: 'image_url_2x')
  final String mediumImageUrl;

  /// Large image URL.
  @override
  @JsonKey(name: 'image_url_4x')
  final String largeImageUrl;

  @override
  String toString() {
    return 'BadgeVersion(id: $id, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BadgeVersion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.smallImageUrl, smallImageUrl) ||
                other.smallImageUrl == smallImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, smallImageUrl, mediumImageUrl, largeImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadgeVersionCopyWith<_$_BadgeVersion> get copyWith =>
      __$$_BadgeVersionCopyWithImpl<_$_BadgeVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BadgeVersionToJson(
      this,
    );
  }
}

abstract class _BadgeVersion implements BadgeVersion {
  const factory _BadgeVersion(
          {required final String id,
          @JsonKey(name: 'image_url_1x') required final String smallImageUrl,
          @JsonKey(name: 'image_url_2x') required final String mediumImageUrl,
          @JsonKey(name: 'image_url_4x') required final String largeImageUrl}) =
      _$_BadgeVersion;

  factory _BadgeVersion.fromJson(Map<String, dynamic> json) =
      _$_BadgeVersion.fromJson;

  @override

  /// ID of the chat badge version.
  String get id;
  @override

  /// Small image URL.
  @JsonKey(name: 'image_url_1x')
  String get smallImageUrl;
  @override

  /// Medium image URL.
  @JsonKey(name: 'image_url_2x')
  String get mediumImageUrl;
  @override

  /// Large image URL.
  @JsonKey(name: 'image_url_4x')
  String get largeImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeVersionCopyWith<_$_BadgeVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
