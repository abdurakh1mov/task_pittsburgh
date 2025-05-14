import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/home_bloc.dart';
import 'package:task/components/custom_alert_dialog.dart';
import 'package:task/components/meal_detail_bottom_sheet.dart';
import 'package:task/components/meal_item.dart';
import 'package:task/model/home_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedCategory = "1";
  var selectedCategoryImage =
      "https://www.themealdb.com/images/category/beef.png";
  var selectedCategoryName = "Beef";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: state.categories?.categories
                            ?.map((e) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = e.idCategory ?? '';
                                      selectedCategoryImage =
                                          e.strCategoryThumb ?? '';
                                      selectedCategoryName =
                                          e.strCategory ?? '';
                                      context.read<HomeBloc>().add(
                                          HomeEvent.getHomeDatas(
                                              category: selectedCategoryName));
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(6),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      e.strCategory ?? '',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: selectedCategory ==
                                                  e.idCategory
                                              ? Colors.black
                                              : Colors.black.withOpacity(0.4)),
                                    ),
                                  ),
                                ))
                            .toList() ??
                        [],
                  ),
                ),
              ),
              (state.isLoading ?? false)
                  ? SizedBox(
                      height: constraints.maxHeight * 0.8,
                      width: constraints.maxWidth * 0.8,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    )
                  : Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // if (selectedCategoryImage.isNotEmpty)
                            //   Image.network(
                            //     selectedCategoryImage,
                            //   ),
                            // Container(
                            //   margin: EdgeInsets.only(
                            //     left: 16,
                            //     top: 20,
                            //   ),
                            //   child: Align(
                            //     alignment: Alignment.topLeft,
                            //     child: Text(
                            //       selectedCategoryName,
                            //       style: const TextStyle(
                            //           fontSize: 16,
                            //           fontWeight: FontWeight.w500,
                            //           color: Colors.black),
                            //     ),
                            //   ),
                            // ),
                            Container(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 16,
                                        mainAxisSpacing: 16,
                                        childAspectRatio: 1 / 1.35),
                                itemCount: state.homeModel?.meals?.length ?? 0,
                                itemBuilder: (contextGridView, index) {
                                  var item = state.homeModel?.meals?[index];
                                  return MealItem(
                                      rootTapped: () {
                                        context.read<HomeBloc>().add(
                                            HomeEvent.getMealDetail(
                                                idMeal: item?.idMeal ?? ""));
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (contextBottomSheet) {
                                              return BlocProvider.value(
                                                  value: context
                                                      .read<HomeBloc>()
                                                    ..add(
                                                        HomeEvent.getMealDetail(
                                                            idMeal:
                                                                item?.idMeal ??
                                                                    "")),
                                                  child: MealDetailBottomSheet(
                                                    idMeal: item?.idMeal,
                                                  ));
                                            });
                                      },
                                      isHome: true,
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (contextAlert) {
                                              return CustomAlertDialog(
                                                  onSaved: (count) {
                                                context.read<HomeBloc>().add(
                                                    HomeEvent.addMeal(
                                                        meal: Meal(
                                                            idMeal:
                                                                item?.idMeal,
                                                            strMeal:
                                                                item?.strMeal,
                                                            strMealThumb: item
                                                                ?.strMealThumb)));
                                              });
                                            });
                                      },
                                      strMeal: item?.strMeal,
                                      strMealThumb: item?.strMealThumb,
                                      idMeal: item?.idMeal);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          );
        });
      }),
    );
  }
}
