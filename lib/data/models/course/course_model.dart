import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.g.dart';

@JsonSerializable()
class CourseModel {
  final int id;
  final String user;
  final String category;
  final String title;
  final String image;
  final double price;
  final double rating;
  final String status;

  CourseModel({
    required this.id,
    required this.user,
    required this.category,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.status,
  });

  factory CourseModel.fromJson(Map<String,dynamic> json)=> _$CourseModelFromJson(json);
  Map<String,dynamic> toJson()=> _$CourseModelToJson(this);
}
