import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_account_model.g.dart';

@JsonSerializable()
class SocialAccountModel {
  final int id;
  final String link;
  final String title;
  final String icon;

  SocialAccountModel({required this.id, required this.title, required this.icon, required this.link});

  factory SocialAccountModel.fromJson(Map<String, dynamic> json) => _$SocialAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocialAccountModelToJson(this);
}
