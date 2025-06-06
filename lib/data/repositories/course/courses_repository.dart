import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/course/course_model.dart';

class CoursesRepository{
  final ApiClient client;
  CoursesRepository({required this.client});

  Future<List<CourseModel>> fetchCourses()async{
    final rawCourses = await client.getGenericRequest<List>("/courses/list");
    final courses = rawCourses.map((e)=> CourseModel.fromJson(e)).toList();
    return courses;
  }

}