// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'play_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayState _$PlayStateFromJson(Map<String, dynamic> json) {
  return _PlayState.fromJson(json);
}

/// @nodoc
mixin _$PlayState {
  Category? get category =>
      throw _privateConstructorUsedError; //Unmodified category is needed for Play Again option on Winner Page
  Category? get unmodifiedCategory => throw _privateConstructorUsedError;
  List<Item> get winnerItems => throw _privateConstructorUsedError;
  bool get isWinnerDetermined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayStateCopyWith<PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayStateCopyWith<$Res> {
  factory $PlayStateCopyWith(PlayState value, $Res Function(PlayState) then) =
      _$PlayStateCopyWithImpl<$Res, PlayState>;
  @useResult
  $Res call(
      {Category? category,
      Category? unmodifiedCategory,
      List<Item> winnerItems,
      bool isWinnerDetermined});

  $CategoryCopyWith<$Res>? get category;
  $CategoryCopyWith<$Res>? get unmodifiedCategory;
}

/// @nodoc
class _$PlayStateCopyWithImpl<$Res, $Val extends PlayState>
    implements $PlayStateCopyWith<$Res> {
  _$PlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? unmodifiedCategory = freezed,
    Object? winnerItems = null,
    Object? isWinnerDetermined = null,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      unmodifiedCategory: freezed == unmodifiedCategory
          ? _value.unmodifiedCategory
          : unmodifiedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      winnerItems: null == winnerItems
          ? _value.winnerItems
          : winnerItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      isWinnerDetermined: null == isWinnerDetermined
          ? _value.isWinnerDetermined
          : isWinnerDetermined // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get unmodifiedCategory {
    if (_value.unmodifiedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.unmodifiedCategory!, (value) {
      return _then(_value.copyWith(unmodifiedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlayStateCopyWith<$Res> implements $PlayStateCopyWith<$Res> {
  factory _$$_PlayStateCopyWith(
          _$_PlayState value, $Res Function(_$_PlayState) then) =
      __$$_PlayStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Category? category,
      Category? unmodifiedCategory,
      List<Item> winnerItems,
      bool isWinnerDetermined});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $CategoryCopyWith<$Res>? get unmodifiedCategory;
}

/// @nodoc
class __$$_PlayStateCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res, _$_PlayState>
    implements _$$_PlayStateCopyWith<$Res> {
  __$$_PlayStateCopyWithImpl(
      _$_PlayState _value, $Res Function(_$_PlayState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? unmodifiedCategory = freezed,
    Object? winnerItems = null,
    Object? isWinnerDetermined = null,
  }) {
    return _then(_$_PlayState(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      unmodifiedCategory: freezed == unmodifiedCategory
          ? _value.unmodifiedCategory
          : unmodifiedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      winnerItems: null == winnerItems
          ? _value._winnerItems
          : winnerItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      isWinnerDetermined: null == isWinnerDetermined
          ? _value.isWinnerDetermined
          : isWinnerDetermined // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayState extends _PlayState {
  const _$_PlayState(
      {this.category,
      this.unmodifiedCategory,
      final List<Item> winnerItems = const [],
      this.isWinnerDetermined = false})
      : _winnerItems = winnerItems,
        super._();

  factory _$_PlayState.fromJson(Map<String, dynamic> json) =>
      _$$_PlayStateFromJson(json);

  @override
  final Category? category;
//Unmodified category is needed for Play Again option on Winner Page
  @override
  final Category? unmodifiedCategory;
  final List<Item> _winnerItems;
  @override
  @JsonKey()
  List<Item> get winnerItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_winnerItems);
  }

  @override
  @JsonKey()
  final bool isWinnerDetermined;

  @override
  String toString() {
    return 'PlayState(category: $category, unmodifiedCategory: $unmodifiedCategory, winnerItems: $winnerItems, isWinnerDetermined: $isWinnerDetermined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayState &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.unmodifiedCategory, unmodifiedCategory) ||
                other.unmodifiedCategory == unmodifiedCategory) &&
            const DeepCollectionEquality()
                .equals(other._winnerItems, _winnerItems) &&
            (identical(other.isWinnerDetermined, isWinnerDetermined) ||
                other.isWinnerDetermined == isWinnerDetermined));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, unmodifiedCategory,
      const DeepCollectionEquality().hash(_winnerItems), isWinnerDetermined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayStateCopyWith<_$_PlayState> get copyWith =>
      __$$_PlayStateCopyWithImpl<_$_PlayState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayStateToJson(
      this,
    );
  }
}

abstract class _PlayState extends PlayState {
  const factory _PlayState(
      {final Category? category,
      final Category? unmodifiedCategory,
      final List<Item> winnerItems,
      final bool isWinnerDetermined}) = _$_PlayState;
  const _PlayState._() : super._();

  factory _PlayState.fromJson(Map<String, dynamic> json) =
      _$_PlayState.fromJson;

  @override
  Category? get category;
  @override //Unmodified category is needed for Play Again option on Winner Page
  Category? get unmodifiedCategory;
  @override
  List<Item> get winnerItems;
  @override
  bool get isWinnerDetermined;
  @override
  @JsonKey(ignore: true)
  _$$_PlayStateCopyWith<_$_PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}
