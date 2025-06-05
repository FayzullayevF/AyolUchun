import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'categories_model.g.dart';


@JsonSerializable()
class CategoriesModel  {

  final int id;


  final String title;

  final String icon;


  final int totalCourses;

  CategoriesModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.totalCourses,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesModelToJson(this);
}
