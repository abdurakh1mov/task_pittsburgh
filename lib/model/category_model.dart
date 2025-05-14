
import 'dart:convert';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
    List<Category>? categories;

    CategoryModel({
        this.categories,
    });

    CategoryModel copyWith({
        List<Category>? categories,
    }) => 
        CategoryModel(
            categories: categories ?? this.categories,
        );

    factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
    };
}

class Category {
    String? idCategory;
    String? strCategory;
    String? strCategoryThumb;
    String? strCategoryDescription;

    Category({
        this.idCategory,
        this.strCategory,
        this.strCategoryThumb,
        this.strCategoryDescription,
    });

    Category copyWith({
        String? idCategory,
        String? strCategory,
        String? strCategoryThumb,
        String? strCategoryDescription,
    }) => 
        Category(
            idCategory: idCategory ?? this.idCategory,
            strCategory: strCategory ?? this.strCategory,
            strCategoryThumb: strCategoryThumb ?? this.strCategoryThumb,
            strCategoryDescription: strCategoryDescription ?? this.strCategoryDescription,
        );

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        idCategory: json["idCategory"],
        strCategory: json["strCategory"],
        strCategoryThumb: json["strCategoryThumb"],
        strCategoryDescription: json["strCategoryDescription"],
    );

    Map<String, dynamic> toJson() => {
        "idCategory": idCategory,
        "strCategory": strCategory,
        "strCategoryThumb": strCategoryThumb,
        "strCategoryDescription": strCategoryDescription,
    };
}
