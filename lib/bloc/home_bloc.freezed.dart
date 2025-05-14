// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool? get isDetailLoading => throw _privateConstructorUsedError;
  int? get currentIndex => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  HomeModel? get homeModel => throw _privateConstructorUsedError;
  CategoryModel? get categories => throw _privateConstructorUsedError;
  List<Meal>? get savedMeals => throw _privateConstructorUsedError;
  MealDetailModel? get mealDetail => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool? isDetailLoading,
      int? currentIndex,
      bool? isLoading,
      HomeModel? homeModel,
      CategoryModel? categories,
      List<Meal>? savedMeals,
      MealDetailModel? mealDetail});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDetailLoading = freezed,
    Object? currentIndex = freezed,
    Object? isLoading = freezed,
    Object? homeModel = freezed,
    Object? categories = freezed,
    Object? savedMeals = freezed,
    Object? mealDetail = freezed,
  }) {
    return _then(_value.copyWith(
      isDetailLoading: freezed == isDetailLoading
          ? _value.isDetailLoading
          : isDetailLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentIndex: freezed == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      homeModel: freezed == homeModel
          ? _value.homeModel
          : homeModel // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      savedMeals: freezed == savedMeals
          ? _value.savedMeals
          : savedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>?,
      mealDetail: freezed == mealDetail
          ? _value.mealDetail
          : mealDetail // ignore: cast_nullable_to_non_nullable
              as MealDetailModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isDetailLoading,
      int? currentIndex,
      bool? isLoading,
      HomeModel? homeModel,
      CategoryModel? categories,
      List<Meal>? savedMeals,
      MealDetailModel? mealDetail});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDetailLoading = freezed,
    Object? currentIndex = freezed,
    Object? isLoading = freezed,
    Object? homeModel = freezed,
    Object? categories = freezed,
    Object? savedMeals = freezed,
    Object? mealDetail = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isDetailLoading: freezed == isDetailLoading
          ? _value.isDetailLoading
          : isDetailLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentIndex: freezed == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      homeModel: freezed == homeModel
          ? _value.homeModel
          : homeModel // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      savedMeals: freezed == savedMeals
          ? _value._savedMeals
          : savedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>?,
      mealDetail: freezed == mealDetail
          ? _value.mealDetail
          : mealDetail // ignore: cast_nullable_to_non_nullable
              as MealDetailModel?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState with DiagnosticableTreeMixin {
  const _$HomeStateImpl(
      {this.isDetailLoading = false,
      this.currentIndex = null,
      this.isLoading = false,
      this.homeModel = null,
      this.categories = null,
      final List<Meal>? savedMeals = null,
      this.mealDetail = null})
      : _savedMeals = savedMeals,
        super._();

  @override
  @JsonKey()
  final bool? isDetailLoading;
  @override
  @JsonKey()
  final int? currentIndex;
  @override
  @JsonKey()
  final bool? isLoading;
  @override
  @JsonKey()
  final HomeModel? homeModel;
  @override
  @JsonKey()
  final CategoryModel? categories;
  final List<Meal>? _savedMeals;
  @override
  @JsonKey()
  List<Meal>? get savedMeals {
    final value = _savedMeals;
    if (value == null) return null;
    if (_savedMeals is EqualUnmodifiableListView) return _savedMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final MealDetailModel? mealDetail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(isDetailLoading: $isDetailLoading, currentIndex: $currentIndex, isLoading: $isLoading, homeModel: $homeModel, categories: $categories, savedMeals: $savedMeals, mealDetail: $mealDetail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('isDetailLoading', isDetailLoading))
      ..add(DiagnosticsProperty('currentIndex', currentIndex))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('homeModel', homeModel))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('savedMeals', savedMeals))
      ..add(DiagnosticsProperty('mealDetail', mealDetail));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isDetailLoading, isDetailLoading) ||
                other.isDetailLoading == isDetailLoading) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.homeModel, homeModel) ||
                other.homeModel == homeModel) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            const DeepCollectionEquality()
                .equals(other._savedMeals, _savedMeals) &&
            (identical(other.mealDetail, mealDetail) ||
                other.mealDetail == mealDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDetailLoading,
      currentIndex,
      isLoading,
      homeModel,
      categories,
      const DeepCollectionEquality().hash(_savedMeals),
      mealDetail);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final bool? isDetailLoading,
      final int? currentIndex,
      final bool? isLoading,
      final HomeModel? homeModel,
      final CategoryModel? categories,
      final List<Meal>? savedMeals,
      final MealDetailModel? mealDetail}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  bool? get isDetailLoading;
  @override
  int? get currentIndex;
  @override
  bool? get isLoading;
  @override
  HomeModel? get homeModel;
  @override
  CategoryModel? get categories;
  @override
  List<Meal>? get savedMeals;
  @override
  MealDetailModel? get mealDetail;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getHomeDatas,
    required TResult Function() getCategoryList,
    required TResult Function() getSavedMeals,
    required TResult Function(Meal meal) addMeal,
    required TResult Function(String idMeal) getMealDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getHomeDatas,
    TResult? Function()? getCategoryList,
    TResult? Function()? getSavedMeals,
    TResult? Function(Meal meal)? addMeal,
    TResult? Function(String idMeal)? getMealDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getHomeDatas,
    TResult Function()? getCategoryList,
    TResult Function()? getSavedMeals,
    TResult Function(Meal meal)? addMeal,
    TResult Function(String idMeal)? getMealDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDatas value) getHomeDatas,
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetSavedMeals value) getSavedMeals,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_GetMealDetail value) getMealDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeDatas value)? getHomeDatas,
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetSavedMeals value)? getSavedMeals,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_GetMealDetail value)? getMealDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDatas value)? getHomeDatas,
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetSavedMeals value)? getSavedMeals,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_GetMealDetail value)? getMealDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetHomeDatasImplCopyWith<$Res> {
  factory _$$GetHomeDatasImplCopyWith(
          _$GetHomeDatasImpl value, $Res Function(_$GetHomeDatasImpl) then) =
      __$$GetHomeDatasImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$GetHomeDatasImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeDatasImpl>
    implements _$$GetHomeDatasImplCopyWith<$Res> {
  __$$GetHomeDatasImplCopyWithImpl(
      _$GetHomeDatasImpl _value, $Res Function(_$GetHomeDatasImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetHomeDatasImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeDatasImpl with DiagnosticableTreeMixin implements _GetHomeDatas {
  const _$GetHomeDatasImpl({required this.category});

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getHomeDatas(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.getHomeDatas'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeDatasImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeDatasImplCopyWith<_$GetHomeDatasImpl> get copyWith =>
      __$$GetHomeDatasImplCopyWithImpl<_$GetHomeDatasImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getHomeDatas,
    required TResult Function() getCategoryList,
    required TResult Function() getSavedMeals,
    required TResult Function(Meal meal) addMeal,
    required TResult Function(String idMeal) getMealDetail,
  }) {
    return getHomeDatas(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getHomeDatas,
    TResult? Function()? getCategoryList,
    TResult? Function()? getSavedMeals,
    TResult? Function(Meal meal)? addMeal,
    TResult? Function(String idMeal)? getMealDetail,
  }) {
    return getHomeDatas?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getHomeDatas,
    TResult Function()? getCategoryList,
    TResult Function()? getSavedMeals,
    TResult Function(Meal meal)? addMeal,
    TResult Function(String idMeal)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getHomeDatas != null) {
      return getHomeDatas(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDatas value) getHomeDatas,
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetSavedMeals value) getSavedMeals,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_GetMealDetail value) getMealDetail,
  }) {
    return getHomeDatas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeDatas value)? getHomeDatas,
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetSavedMeals value)? getSavedMeals,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_GetMealDetail value)? getMealDetail,
  }) {
    return getHomeDatas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDatas value)? getHomeDatas,
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetSavedMeals value)? getSavedMeals,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_GetMealDetail value)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getHomeDatas != null) {
      return getHomeDatas(this);
    }
    return orElse();
  }
}

abstract class _GetHomeDatas implements HomeEvent {
  const factory _GetHomeDatas({required final String category}) =
      _$GetHomeDatasImpl;

  String get category;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHomeDatasImplCopyWith<_$GetHomeDatasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryListImplCopyWith<$Res> {
  factory _$$GetCategoryListImplCopyWith(_$GetCategoryListImpl value,
          $Res Function(_$GetCategoryListImpl) then) =
      __$$GetCategoryListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoryListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoryListImpl>
    implements _$$GetCategoryListImplCopyWith<$Res> {
  __$$GetCategoryListImplCopyWithImpl(
      _$GetCategoryListImpl _value, $Res Function(_$GetCategoryListImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoryListImpl
    with DiagnosticableTreeMixin
    implements _GetCategoryList {
  const _$GetCategoryListImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getCategoryList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.getCategoryList'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoryListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getHomeDatas,
    required TResult Function() getCategoryList,
    required TResult Function() getSavedMeals,
    required TResult Function(Meal meal) addMeal,
    required TResult Function(String idMeal) getMealDetail,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getHomeDatas,
    TResult? Function()? getCategoryList,
    TResult? Function()? getSavedMeals,
    TResult? Function(Meal meal)? addMeal,
    TResult? Function(String idMeal)? getMealDetail,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getHomeDatas,
    TResult Function()? getCategoryList,
    TResult Function()? getSavedMeals,
    TResult Function(Meal meal)? addMeal,
    TResult Function(String idMeal)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDatas value) getHomeDatas,
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetSavedMeals value) getSavedMeals,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_GetMealDetail value) getMealDetail,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeDatas value)? getHomeDatas,
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetSavedMeals value)? getSavedMeals,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_GetMealDetail value)? getMealDetail,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDatas value)? getHomeDatas,
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetSavedMeals value)? getSavedMeals,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_GetMealDetail value)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryList implements HomeEvent {
  const factory _GetCategoryList() = _$GetCategoryListImpl;
}

/// @nodoc
abstract class _$$GetSavedMealsImplCopyWith<$Res> {
  factory _$$GetSavedMealsImplCopyWith(
          _$GetSavedMealsImpl value, $Res Function(_$GetSavedMealsImpl) then) =
      __$$GetSavedMealsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSavedMealsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetSavedMealsImpl>
    implements _$$GetSavedMealsImplCopyWith<$Res> {
  __$$GetSavedMealsImplCopyWithImpl(
      _$GetSavedMealsImpl _value, $Res Function(_$GetSavedMealsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSavedMealsImpl
    with DiagnosticableTreeMixin
    implements _GetSavedMeals {
  const _$GetSavedMealsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getSavedMeals()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.getSavedMeals'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSavedMealsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getHomeDatas,
    required TResult Function() getCategoryList,
    required TResult Function() getSavedMeals,
    required TResult Function(Meal meal) addMeal,
    required TResult Function(String idMeal) getMealDetail,
  }) {
    return getSavedMeals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getHomeDatas,
    TResult? Function()? getCategoryList,
    TResult? Function()? getSavedMeals,
    TResult? Function(Meal meal)? addMeal,
    TResult? Function(String idMeal)? getMealDetail,
  }) {
    return getSavedMeals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getHomeDatas,
    TResult Function()? getCategoryList,
    TResult Function()? getSavedMeals,
    TResult Function(Meal meal)? addMeal,
    TResult Function(String idMeal)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getSavedMeals != null) {
      return getSavedMeals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDatas value) getHomeDatas,
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetSavedMeals value) getSavedMeals,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_GetMealDetail value) getMealDetail,
  }) {
    return getSavedMeals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeDatas value)? getHomeDatas,
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetSavedMeals value)? getSavedMeals,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_GetMealDetail value)? getMealDetail,
  }) {
    return getSavedMeals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDatas value)? getHomeDatas,
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetSavedMeals value)? getSavedMeals,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_GetMealDetail value)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getSavedMeals != null) {
      return getSavedMeals(this);
    }
    return orElse();
  }
}

abstract class _GetSavedMeals implements HomeEvent {
  const factory _GetSavedMeals() = _$GetSavedMealsImpl;
}

/// @nodoc
abstract class _$$AddMealImplCopyWith<$Res> {
  factory _$$AddMealImplCopyWith(
          _$AddMealImpl value, $Res Function(_$AddMealImpl) then) =
      __$$AddMealImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Meal meal});
}

/// @nodoc
class __$$AddMealImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddMealImpl>
    implements _$$AddMealImplCopyWith<$Res> {
  __$$AddMealImplCopyWithImpl(
      _$AddMealImpl _value, $Res Function(_$AddMealImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
  }) {
    return _then(_$AddMealImpl(
      meal: null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal,
    ));
  }
}

/// @nodoc

class _$AddMealImpl with DiagnosticableTreeMixin implements _AddMeal {
  const _$AddMealImpl({required this.meal});

  @override
  final Meal meal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.addMeal(meal: $meal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.addMeal'))
      ..add(DiagnosticsProperty('meal', meal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMealImpl &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meal);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMealImplCopyWith<_$AddMealImpl> get copyWith =>
      __$$AddMealImplCopyWithImpl<_$AddMealImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getHomeDatas,
    required TResult Function() getCategoryList,
    required TResult Function() getSavedMeals,
    required TResult Function(Meal meal) addMeal,
    required TResult Function(String idMeal) getMealDetail,
  }) {
    return addMeal(meal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getHomeDatas,
    TResult? Function()? getCategoryList,
    TResult? Function()? getSavedMeals,
    TResult? Function(Meal meal)? addMeal,
    TResult? Function(String idMeal)? getMealDetail,
  }) {
    return addMeal?.call(meal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getHomeDatas,
    TResult Function()? getCategoryList,
    TResult Function()? getSavedMeals,
    TResult Function(Meal meal)? addMeal,
    TResult Function(String idMeal)? getMealDetail,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(meal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDatas value) getHomeDatas,
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetSavedMeals value) getSavedMeals,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_GetMealDetail value) getMealDetail,
  }) {
    return addMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeDatas value)? getHomeDatas,
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetSavedMeals value)? getSavedMeals,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_GetMealDetail value)? getMealDetail,
  }) {
    return addMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDatas value)? getHomeDatas,
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetSavedMeals value)? getSavedMeals,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_GetMealDetail value)? getMealDetail,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(this);
    }
    return orElse();
  }
}

abstract class _AddMeal implements HomeEvent {
  const factory _AddMeal({required final Meal meal}) = _$AddMealImpl;

  Meal get meal;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMealImplCopyWith<_$AddMealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMealDetailImplCopyWith<$Res> {
  factory _$$GetMealDetailImplCopyWith(
          _$GetMealDetailImpl value, $Res Function(_$GetMealDetailImpl) then) =
      __$$GetMealDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idMeal});
}

/// @nodoc
class __$$GetMealDetailImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetMealDetailImpl>
    implements _$$GetMealDetailImplCopyWith<$Res> {
  __$$GetMealDetailImplCopyWithImpl(
      _$GetMealDetailImpl _value, $Res Function(_$GetMealDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
  }) {
    return _then(_$GetMealDetailImpl(
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMealDetailImpl
    with DiagnosticableTreeMixin
    implements _GetMealDetail {
  const _$GetMealDetailImpl({required this.idMeal});

  @override
  final String idMeal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getMealDetail(idMeal: $idMeal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.getMealDetail'))
      ..add(DiagnosticsProperty('idMeal', idMeal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMealDetailImpl &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idMeal);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMealDetailImplCopyWith<_$GetMealDetailImpl> get copyWith =>
      __$$GetMealDetailImplCopyWithImpl<_$GetMealDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getHomeDatas,
    required TResult Function() getCategoryList,
    required TResult Function() getSavedMeals,
    required TResult Function(Meal meal) addMeal,
    required TResult Function(String idMeal) getMealDetail,
  }) {
    return getMealDetail(idMeal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category)? getHomeDatas,
    TResult? Function()? getCategoryList,
    TResult? Function()? getSavedMeals,
    TResult? Function(Meal meal)? addMeal,
    TResult? Function(String idMeal)? getMealDetail,
  }) {
    return getMealDetail?.call(idMeal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getHomeDatas,
    TResult Function()? getCategoryList,
    TResult Function()? getSavedMeals,
    TResult Function(Meal meal)? addMeal,
    TResult Function(String idMeal)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getMealDetail != null) {
      return getMealDetail(idMeal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDatas value) getHomeDatas,
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetSavedMeals value) getSavedMeals,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_GetMealDetail value) getMealDetail,
  }) {
    return getMealDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeDatas value)? getHomeDatas,
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetSavedMeals value)? getSavedMeals,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_GetMealDetail value)? getMealDetail,
  }) {
    return getMealDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDatas value)? getHomeDatas,
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetSavedMeals value)? getSavedMeals,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_GetMealDetail value)? getMealDetail,
    required TResult orElse(),
  }) {
    if (getMealDetail != null) {
      return getMealDetail(this);
    }
    return orElse();
  }
}

abstract class _GetMealDetail implements HomeEvent {
  const factory _GetMealDetail({required final String idMeal}) =
      _$GetMealDetailImpl;

  String get idMeal;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMealDetailImplCopyWith<_$GetMealDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
