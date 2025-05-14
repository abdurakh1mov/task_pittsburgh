part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(false) bool? isDetailLoading,
    @Default(null) int? currentIndex,
    @Default(false) bool? isLoading,
    @Default(null) HomeModel? homeModel,
    @Default(null) CategoryModel? categories,
    @Default(null) List<Meal>? savedMeals,
    @Default(null) MealDetailModel? mealDetail,
  }) = _HomeState;


}
