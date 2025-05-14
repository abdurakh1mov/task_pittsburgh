part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeDatas({required String category}) =
      _GetHomeDatas;
  const factory HomeEvent.getCategoryList() = _GetCategoryList;
  const factory HomeEvent.getSavedMeals() = _GetSavedMeals;
  const factory HomeEvent.addMeal({required Meal meal}) = _AddMeal;
  const factory HomeEvent.getMealDetail({required String idMeal}) = _GetMealDetail;
}
