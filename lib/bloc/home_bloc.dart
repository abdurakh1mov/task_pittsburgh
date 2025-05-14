import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/model/category_model.dart';
import 'package:task/service/db_cart.dart';

import '../model/home_model.dart';
import '../model/meal_detail_model.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<_GetHomeDatas>(_getHomeDatas);
    on<_GetCategoryList>(_getCategoryList);
    on<_GetSavedMeals>(_getSavedMeals);
    on<_AddMeal>(_addMeal);
    on<_GetMealDetail>(_getMealDetail);
  }
  Future<void> _getHomeDatas(
      _GetHomeDatas event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final response = await http.get(Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/filter.php?c=${event.category}'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        emit(state.copyWith(
            homeModel: HomeModel.fromJson(data), isLoading: false));
      } else {}
    } catch (e) {}
  }

  Future<void> _getCategoryList(
      _GetCategoryList event, Emitter<HomeState> emit) async {
    try {
      final response = await http.get(
          Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        emit(state.copyWith(categories: CategoryModel.fromJson(data)));
      } else {}
    } catch (e) {}
  }

  Future<void> _getMealDetail(
      _GetMealDetail event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(isDetailLoading: true));
      final response = await http.get(Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/lookup.php?i=${event.idMeal}'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        emit(state.copyWith(
            mealDetail: MealDetailModel.fromJson(data),
            isDetailLoading: false));
      } else {}
    } catch (e) {}
  }

  Future<void> _getSavedMeals(
      _GetSavedMeals event, Emitter<HomeState> emit) async {
    try {
      final savedMeals = DbService().load;
      emit(state.copyWith(savedMeals: savedMeals));
    } catch (e) {}
  }

  Future<void> _addMeal(_AddMeal event, Emitter<HomeState> emit) async {
    try {
      final savedMeals = DbService().load;
      savedMeals.add(event.meal);
      await DbService().add(event.meal);
      emit(state.copyWith(savedMeals: savedMeals));
    } catch (e) {}
  }
}
