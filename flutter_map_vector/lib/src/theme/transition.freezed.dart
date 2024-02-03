// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeTransition _$ThemeTransitionFromJson(Map<String, dynamic> json) {
  return _ThemeTransition.fromJson(json);
}

/// @nodoc
mixin _$ThemeTransition {
  /// Length of time before a transition begins.
  Duration? get delay => throw _privateConstructorUsedError;

  /// Time allotted for transitions to complete.
  Duration? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeTransitionCopyWith<ThemeTransition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeTransitionCopyWith<$Res> {
  factory $ThemeTransitionCopyWith(
          ThemeTransition value, $Res Function(ThemeTransition) then) =
      _$ThemeTransitionCopyWithImpl<$Res, ThemeTransition>;
  @useResult
  $Res call({Duration? delay, Duration? duration});
}

/// @nodoc
class _$ThemeTransitionCopyWithImpl<$Res, $Val extends ThemeTransition>
    implements $ThemeTransitionCopyWith<$Res> {
  _$ThemeTransitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delay = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeTransitionImplCopyWith<$Res>
    implements $ThemeTransitionCopyWith<$Res> {
  factory _$$ThemeTransitionImplCopyWith(_$ThemeTransitionImpl value,
          $Res Function(_$ThemeTransitionImpl) then) =
      __$$ThemeTransitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration? delay, Duration? duration});
}

/// @nodoc
class __$$ThemeTransitionImplCopyWithImpl<$Res>
    extends _$ThemeTransitionCopyWithImpl<$Res, _$ThemeTransitionImpl>
    implements _$$ThemeTransitionImplCopyWith<$Res> {
  __$$ThemeTransitionImplCopyWithImpl(
      _$ThemeTransitionImpl _value, $Res Function(_$ThemeTransitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delay = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$ThemeTransitionImpl(
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeTransitionImpl implements _ThemeTransition {
  const _$ThemeTransitionImpl(
      {this.delay = Duration.zero,
      this.duration = const Duration(milliseconds: 300)});

  factory _$ThemeTransitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeTransitionImplFromJson(json);

  /// Length of time before a transition begins.
  @override
  @JsonKey()
  final Duration? delay;

  /// Time allotted for transitions to complete.
  @override
  @JsonKey()
  final Duration? duration;

  @override
  String toString() {
    return 'ThemeTransition(delay: $delay, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeTransitionImpl &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, delay, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeTransitionImplCopyWith<_$ThemeTransitionImpl> get copyWith =>
      __$$ThemeTransitionImplCopyWithImpl<_$ThemeTransitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeTransitionImplToJson(
      this,
    );
  }
}

abstract class _ThemeTransition implements ThemeTransition {
  const factory _ThemeTransition(
      {final Duration? delay,
      final Duration? duration}) = _$ThemeTransitionImpl;

  factory _ThemeTransition.fromJson(Map<String, dynamic> json) =
      _$ThemeTransitionImpl.fromJson;

  @override

  /// Length of time before a transition begins.
  Duration? get delay;
  @override

  /// Time allotted for transitions to complete.
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$ThemeTransitionImplCopyWith<_$ThemeTransitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
