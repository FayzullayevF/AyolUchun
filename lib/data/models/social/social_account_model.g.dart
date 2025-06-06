// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialAccountModel _$SocialAccountModelFromJson(Map<String, dynamic> json) =>
    SocialAccountModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      icon: json['icon'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$SocialAccountModelToJson(SocialAccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'title': instance.title,
      'icon': instance.icon,
    };
