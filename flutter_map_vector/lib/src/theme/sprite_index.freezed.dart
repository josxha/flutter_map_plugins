// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprite_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpriteIndexItem _$SpriteIndexItemFromJson(Map<String, dynamic> json) {
  return _SpriteIndexItem.fromJson(json);
}

/// @nodoc
mixin _$SpriteIndexItem {
  /// width of the sprite item
  int get width => throw _privateConstructorUsedError;

  /// height of the sprite item
  int get height => throw _privateConstructorUsedError;

  /// x location within the sprite
  int get x => throw _privateConstructorUsedError;

  /// y location within the sprite
  int get y => throw _privateConstructorUsedError;

  /// The device pixel ratio (also called CSS Pixel Ratio) is what determines
  /// how a device's screen resolution is interpreted by the browser and
  /// also by CSS.
  /// https://datacadamia.com/web/css/pixel_ratio
  int get pixelRatio => throw _privateConstructorUsedError;

  /// An array of four numbers, with the first two specifying the left, top
  /// corner, and the last two specifying the right, bottom corner.
  ///
  /// If present, and if the image uses icon-text-fit, the symbol's text
  /// will be resized to fit inside the content box.
  @Assert('content == null || (content.length == 4)',
      'content needs to have exactly 4 items.')
  List<int>? get content => throw _privateConstructorUsedError;

  /// An array of two-element arrays, consisting of two numbers that
  /// represent the from position and the to position of areas that
  /// can be stretched.
  @Assert('stretchX == null || (stretchX.length == 2)',
      'stretchX needs to have exactly 2 items.')
  List<List<int>>? get stretchX => throw _privateConstructorUsedError;

  /// Same as stretchX, but for the vertical dimension.
  @Assert('stretchY == null || (stretchY.length == 2)',
      'stretchY needs to have exactly 2 items.')
  List<List<int>>? get stretchY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpriteIndexItemCopyWith<SpriteIndexItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpriteIndexItemCopyWith<$Res> {
  factory $SpriteIndexItemCopyWith(
          SpriteIndexItem value, $Res Function(SpriteIndexItem) then) =
      _$SpriteIndexItemCopyWithImpl<$Res, SpriteIndexItem>;
  @useResult
  $Res call(
      {int width,
      int height,
      int x,
      int y,
      int pixelRatio,
      @Assert('content == null || (content.length == 4)',
          'content needs to have exactly 4 items.')
      List<int>? content,
      @Assert('stretchX == null || (stretchX.length == 2)',
          'stretchX needs to have exactly 2 items.')
      List<List<int>>? stretchX,
      @Assert('stretchY == null || (stretchY.length == 2)',
          'stretchY needs to have exactly 2 items.')
      List<List<int>>? stretchY});
}

/// @nodoc
class _$SpriteIndexItemCopyWithImpl<$Res, $Val extends SpriteIndexItem>
    implements $SpriteIndexItemCopyWith<$Res> {
  _$SpriteIndexItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? x = null,
    Object? y = null,
    Object? pixelRatio = null,
    Object? content = freezed,
    Object? stretchX = freezed,
    Object? stretchY = freezed,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      pixelRatio: null == pixelRatio
          ? _value.pixelRatio
          : pixelRatio // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      stretchX: freezed == stretchX
          ? _value.stretchX
          : stretchX // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      stretchY: freezed == stretchY
          ? _value.stretchY
          : stretchY // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpriteIndexItemImplCopyWith<$Res>
    implements $SpriteIndexItemCopyWith<$Res> {
  factory _$$SpriteIndexItemImplCopyWith(_$SpriteIndexItemImpl value,
          $Res Function(_$SpriteIndexItemImpl) then) =
      __$$SpriteIndexItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int width,
      int height,
      int x,
      int y,
      int pixelRatio,
      @Assert('content == null || (content.length == 4)',
          'content needs to have exactly 4 items.')
      List<int>? content,
      @Assert('stretchX == null || (stretchX.length == 2)',
          'stretchX needs to have exactly 2 items.')
      List<List<int>>? stretchX,
      @Assert('stretchY == null || (stretchY.length == 2)',
          'stretchY needs to have exactly 2 items.')
      List<List<int>>? stretchY});
}

/// @nodoc
class __$$SpriteIndexItemImplCopyWithImpl<$Res>
    extends _$SpriteIndexItemCopyWithImpl<$Res, _$SpriteIndexItemImpl>
    implements _$$SpriteIndexItemImplCopyWith<$Res> {
  __$$SpriteIndexItemImplCopyWithImpl(
      _$SpriteIndexItemImpl _value, $Res Function(_$SpriteIndexItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? x = null,
    Object? y = null,
    Object? pixelRatio = null,
    Object? content = freezed,
    Object? stretchX = freezed,
    Object? stretchY = freezed,
  }) {
    return _then(_$SpriteIndexItemImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      pixelRatio: null == pixelRatio
          ? _value.pixelRatio
          : pixelRatio // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      stretchX: freezed == stretchX
          ? _value._stretchX
          : stretchX // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      stretchY: freezed == stretchY
          ? _value._stretchY
          : stretchY // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpriteIndexItemImpl implements _SpriteIndexItem {
  const _$SpriteIndexItemImpl(
      {required this.width,
      required this.height,
      required this.x,
      required this.y,
      required this.pixelRatio,
      @Assert('content == null || (content.length == 4)',
          'content needs to have exactly 4 items.')
      final List<int>? content,
      @Assert('stretchX == null || (stretchX.length == 2)',
          'stretchX needs to have exactly 2 items.')
      final List<List<int>>? stretchX,
      @Assert('stretchY == null || (stretchY.length == 2)',
          'stretchY needs to have exactly 2 items.')
      final List<List<int>>? stretchY})
      : _content = content,
        _stretchX = stretchX,
        _stretchY = stretchY;

  factory _$SpriteIndexItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpriteIndexItemImplFromJson(json);

  /// width of the sprite item
  @override
  final int width;

  /// height of the sprite item
  @override
  final int height;

  /// x location within the sprite
  @override
  final int x;

  /// y location within the sprite
  @override
  final int y;

  /// The device pixel ratio (also called CSS Pixel Ratio) is what determines
  /// how a device's screen resolution is interpreted by the browser and
  /// also by CSS.
  /// https://datacadamia.com/web/css/pixel_ratio
  @override
  final int pixelRatio;

  /// An array of four numbers, with the first two specifying the left, top
  /// corner, and the last two specifying the right, bottom corner.
  ///
  /// If present, and if the image uses icon-text-fit, the symbol's text
  /// will be resized to fit inside the content box.
  final List<int>? _content;

  /// An array of four numbers, with the first two specifying the left, top
  /// corner, and the last two specifying the right, bottom corner.
  ///
  /// If present, and if the image uses icon-text-fit, the symbol's text
  /// will be resized to fit inside the content box.
  @override
  @Assert('content == null || (content.length == 4)',
      'content needs to have exactly 4 items.')
  List<int>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// An array of two-element arrays, consisting of two numbers that
  /// represent the from position and the to position of areas that
  /// can be stretched.
  final List<List<int>>? _stretchX;

  /// An array of two-element arrays, consisting of two numbers that
  /// represent the from position and the to position of areas that
  /// can be stretched.
  @override
  @Assert('stretchX == null || (stretchX.length == 2)',
      'stretchX needs to have exactly 2 items.')
  List<List<int>>? get stretchX {
    final value = _stretchX;
    if (value == null) return null;
    if (_stretchX is EqualUnmodifiableListView) return _stretchX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Same as stretchX, but for the vertical dimension.
  final List<List<int>>? _stretchY;

  /// Same as stretchX, but for the vertical dimension.
  @override
  @Assert('stretchY == null || (stretchY.length == 2)',
      'stretchY needs to have exactly 2 items.')
  List<List<int>>? get stretchY {
    final value = _stretchY;
    if (value == null) return null;
    if (_stretchY is EqualUnmodifiableListView) return _stretchY;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpriteIndexItem(width: $width, height: $height, x: $x, y: $y, pixelRatio: $pixelRatio, content: $content, stretchX: $stretchX, stretchY: $stretchY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpriteIndexItemImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.pixelRatio, pixelRatio) ||
                other.pixelRatio == pixelRatio) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._stretchX, _stretchX) &&
            const DeepCollectionEquality().equals(other._stretchY, _stretchY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      width,
      height,
      x,
      y,
      pixelRatio,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_stretchX),
      const DeepCollectionEquality().hash(_stretchY));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpriteIndexItemImplCopyWith<_$SpriteIndexItemImpl> get copyWith =>
      __$$SpriteIndexItemImplCopyWithImpl<_$SpriteIndexItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpriteIndexItemImplToJson(
      this,
    );
  }
}

abstract class _SpriteIndexItem implements SpriteIndexItem {
  const factory _SpriteIndexItem(
      {required final int width,
      required final int height,
      required final int x,
      required final int y,
      required final int pixelRatio,
      @Assert('content == null || (content.length == 4)',
          'content needs to have exactly 4 items.')
      final List<int>? content,
      @Assert('stretchX == null || (stretchX.length == 2)',
          'stretchX needs to have exactly 2 items.')
      final List<List<int>>? stretchX,
      @Assert('stretchY == null || (stretchY.length == 2)',
          'stretchY needs to have exactly 2 items.')
      final List<List<int>>? stretchY}) = _$SpriteIndexItemImpl;

  factory _SpriteIndexItem.fromJson(Map<String, dynamic> json) =
      _$SpriteIndexItemImpl.fromJson;

  @override

  /// width of the sprite item
  int get width;
  @override

  /// height of the sprite item
  int get height;
  @override

  /// x location within the sprite
  int get x;
  @override

  /// y location within the sprite
  int get y;
  @override

  /// The device pixel ratio (also called CSS Pixel Ratio) is what determines
  /// how a device's screen resolution is interpreted by the browser and
  /// also by CSS.
  /// https://datacadamia.com/web/css/pixel_ratio
  int get pixelRatio;
  @override

  /// An array of four numbers, with the first two specifying the left, top
  /// corner, and the last two specifying the right, bottom corner.
  ///
  /// If present, and if the image uses icon-text-fit, the symbol's text
  /// will be resized to fit inside the content box.
  @Assert('content == null || (content.length == 4)',
      'content needs to have exactly 4 items.')
  List<int>? get content;
  @override

  /// An array of two-element arrays, consisting of two numbers that
  /// represent the from position and the to position of areas that
  /// can be stretched.
  @Assert('stretchX == null || (stretchX.length == 2)',
      'stretchX needs to have exactly 2 items.')
  List<List<int>>? get stretchX;
  @override

  /// Same as stretchX, but for the vertical dimension.
  @Assert('stretchY == null || (stretchY.length == 2)',
      'stretchY needs to have exactly 2 items.')
  List<List<int>>? get stretchY;
  @override
  @JsonKey(ignore: true)
  _$$SpriteIndexItemImplCopyWith<_$SpriteIndexItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
