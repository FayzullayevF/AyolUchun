// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterviewsModel _$InterviewsModelFromJson(Map<String, dynamic> json) =>
    InterviewsModel(
      id: (json['id'] as num).toInt(),
      user: json['user'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$InterviewsModelToJson(InterviewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'image': instance.image,
      'duration': instance.duration,
    };
