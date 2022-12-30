// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesState {
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Category> get localWinnerCategories =>
      throw _privateConstructorUsedError;
  CategoriesStateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {List<Category> categories,
      List<Category> localWinnerCategories,
      CategoriesStateStatus status});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? localWinnerCategories = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      localWinnerCategories: null == localWinnerCategories
          ? _value.localWinnerCategories
          : localWinnerCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoriesStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesStateCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$_CategoriesStateCopyWith(
          _$_CategoriesState value, $Res Function(_$_CategoriesState) then) =
      __$$_CategoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> categories,
      List<Category> localWinnerCategories,
      CategoriesStateStatus status});
}

/// @nodoc
class __$$_CategoriesStateCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesState>
    implements _$$_CategoriesStateCopyWith<$Res> {
  __$$_CategoriesStateCopyWithImpl(
      _$_CategoriesState _value, $Res Function(_$_CategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? localWinnerCategories = null,
    Object? status = null,
  }) {
    return _then(_$_CategoriesState(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      localWinnerCategories: null == localWinnerCategories
          ? _value._localWinnerCategories
          : localWinnerCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoriesStateStatus,
    ));
  }
}

/// @nodoc

class _$_CategoriesState extends _CategoriesState {
  const _$_CategoriesState(
      {final List<Category> categories = const [],
      final List<Category> localWinnerCategories = const [],
      required this.status})
      : _categories = categories,
        _localWinnerCategories = localWinnerCategories,
        super._();

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Category> _localWinnerCategories;
  @override
  @JsonKey()
  List<Category> get localWinnerCategories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localWinnerCategories);
  }

  @override
  final CategoriesStateStatus status;

  @override
  String toString() {
    return 'CategoriesState(categories: $categories, localWinnerCategories: $localWinnerCategories, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._localWinnerCategories, _localWinnerCategories) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_localWinnerCategories),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesStateCopyWith<_$_CategoriesState> get copyWith =>
      __$$_CategoriesStateCopyWithImpl<_$_CategoriesState>(this, _$identity);
}

abstract class _CategoriesState extends CategoriesState {
  const factory _CategoriesState(
      {final List<Category> categories,
      final List<Category> localWinnerCategories,
      required final CategoriesStateStatus status}) = _$_CategoriesState;
  const _CategoriesState._() : super._();

  @override
  List<Category> get categories;
  @override
  List<Category> get localWinnerCategories;
  @override
  CategoriesStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesStateCopyWith<_$_CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
