import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/home_bloc.dart';
import 'package:task/components/youtube_player.dart';
import 'package:task/model/meal_detail_model.dart';

class MealDetailBottomSheet extends StatelessWidget {
  const MealDetailBottomSheet({super.key, required this.idMeal});
  final String? idMeal;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final meal = state.mealDetail?.meals?.firstWhere(
          (b) => b.idMeal == idMeal,
          orElse: () => Meals(),
        );

        final List<Map<String, String>> ingredients = [];
        for (int i = 1; i <= 20; i++) {
          final ingredient = meal?.toJson()['strIngredient$i'] ?? '';
          final measure = meal?.toJson()['strMeasure$i'] ?? '';
          if (ingredient.isNotEmpty && measure.isNotEmpty) {
            ingredients.add({
              'ingredient': ingredient,
              'measure': measure,
            });
          }
        }

        return Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (meal != null &&
                    meal.strYoutube != null &&
                    meal.strYoutube!.isNotEmpty)
                  YouTubePlayerScreen(
                    videoUrl: meal.strYoutube!,
                  )
                else
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Center(child: Text("No video available")),
                  ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ingredients",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      ...ingredients
                          .map((item) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${item['measure']} ${item['ingredient']}",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                      if (ingredients.isEmpty)
                        Text(
                          "No ingredients available",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
