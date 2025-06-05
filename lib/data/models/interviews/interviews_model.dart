import 'package:ayol_uchun/data/models/categories/categories_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interviews_model.g.dart';

@JsonSerializable()
class InterviewsModel {
  final int id;
  final String user;
  final String title;
  final String image;
  final String duration;

  InterviewsModel({
    required this.id,
    required this.user,
    required this.title,
    required this.image,
    required this.duration,
  });
  factory InterviewsModel.fromJson(Map<String,dynamic> json)=> _$InterviewsModelFromJson(json);
  Map<String,dynamic> toJson() => _$InterviewsModelToJson(this);
}
