// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_create_clip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchCreateClip _$TwitchCreateClipFromJson(Map<String, dynamic> json) {
  return _TwitchCreateClip.fromJson(json);
}

/// @nodoc
mixin _$TwitchCreateClip {
  @JsonKey(name: 'edit_url')
  String get editUrl => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchCreateClipCopyWith<TwitchCreateClip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCreateClipCopyWith<$Res> {
  factory $TwitchCreateClipCopyWith(
          TwitchCreateClip value, $Res Function(TwitchCreateClip) then) =
      _$TwitchCreateClipCopyWithImpl<$Res, TwitchCreateClip>;
  @useResult
  $Res call({@JsonKey(name: 'edit_url') String editUrl, String id});
}

/// @nodoc
class _$TwitchCreateClipCopyWithImpl<$Res, $Val extends TwitchCreateClip>
    implements $TwitchCreateClipCopyWith<$Res> {
  _$TwitchCreateClipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editUrl = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      editUrl: null == editUrl
          ? _value.editUrl
          : editUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchCreateClipImplCopyWith<$Res>
    implements $TwitchCreateClipCopyWith<$Res> {
  factory _$$TwitchCreateClipImplCopyWith(_$TwitchCreateClipImpl value,
          $Res Function(_$TwitchCreateClipImpl) then) =
      __$$TwitchCreateClipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'edit_url') String editUrl, String id});
}

/// @nodoc
class __$$TwitchCreateClipImplCopyWithImpl<$Res>
    extends _$TwitchCreateClipCopyWithImpl<$Res, _$TwitchCreateClipImpl>
    implements _$$TwitchCreateClipImplCopyWith<$Res> {
  __$$TwitchCreateClipImplCopyWithImpl(_$TwitchCreateClipImpl _value,
      $Res Function(_$TwitchCreateClipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editUrl = null,
    Object? id = null,
  }) {
    return _then(_$TwitchCreateClipImpl(
      editUrl: null == editUrl
          ? _value.editUrl
          : editUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchCreateClipImpl implements _TwitchCreateClip {
  const _$TwitchCreateClipImpl(
      {@JsonKey(name: 'edit_url') required this.editUrl, required this.id});

  factory _$TwitchCreateClipImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchCreateClipImplFromJson(json);

  @override
  @JsonKey(name: 'edit_url')
  final String editUrl;
  @override
  final String id;

  @override
  String toString() {
    return 'TwitchCreateClip(editUrl: $editUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchCreateClipImpl &&
            (identical(other.editUrl, editUrl) || other.editUrl == editUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, editUrl, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchCreateClipImplCopyWith<_$TwitchCreateClipImpl> get copyWith =>
      __$$TwitchCreateClipImplCopyWithImpl<_$TwitchCreateClipImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchCreateClipImplToJson(
      this,
    );
  }
}

abstract class _TwitchCreateClip implements TwitchCreateClip {
  const factory _TwitchCreateClip(
      {@JsonKey(name: 'edit_url') required final String editUrl,
      required final String id}) = _$TwitchCreateClipImpl;

  factory _TwitchCreateClip.fromJson(Map<String, dynamic> json) =
      _$TwitchCreateClipImpl.fromJson;

  @override
  @JsonKey(name: 'edit_url')
  String get editUrl;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TwitchCreateClipImplCopyWith<_$TwitchCreateClipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
