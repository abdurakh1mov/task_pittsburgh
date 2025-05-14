import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
    List<Meal>? meals;

    HomeModel({
        this.meals,
    });

    HomeModel copyWith({
        List<Meal>? meals,
    }) => 
        HomeModel(
            meals: meals ?? this.meals,
        );

    factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        meals: json["meals"] == null ? [] : List<Meal>.from(json["meals"]!.map((x) => Meal.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "meals": meals == null ? [] : List<dynamic>.from(meals!.map((x) => x.toJson())),
    };
}

class Meal {
    String? strMeal;
    String? strMealThumb;
    String? idMeal;

    Meal({
        this.strMeal,
        this.strMealThumb,
        this.idMeal,
    });

    Meal copyWith({
        String? strMeal,
        String? strMealThumb,
        String? idMeal,
    }) => 
        Meal(
            strMeal: strMeal ?? this.strMeal,
            strMealThumb: strMealThumb ?? this.strMealThumb,
            idMeal: idMeal ?? this.idMeal,
        );

    factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
        idMeal: json["idMeal"],
    );

    Map<String, dynamic> toJson() => {
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
        "idMeal": idMeal,
    };
}
