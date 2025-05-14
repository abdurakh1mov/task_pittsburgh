import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/home_bloc.dart';
import 'package:task/components/meal_item.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1 / 1.35),
            itemCount: state.savedMeals?.length ?? 0,
            itemBuilder: (context, index) {
              var item = state.savedMeals?[index];
              return MealItem(
                  rootTapped: (){},
                  isHome: false,
                  onTap: () {},
                  strMeal: item?.strMeal,
                  strMealThumb: item?.strMealThumb,
                  idMeal: item?.idMeal);
            },
          ),
        ),
      );
    });
  }
}
