import 'package:ayol_uchun/data/models/categories/categories_model.dart';
import 'package:ayol_uchun/data/models/course/course_model.dart';
import 'package:ayol_uchun/data/models/interviews/interviews_model.dart';
import 'package:ayol_uchun/data/models/social/social_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus { loading, error, success }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStatus status,
    required List<CategoriesModel> categories,
    required List<InterviewsModel> interviews,
    required List<SocialAccountModel> accounts,
    required List<CourseModel> courses,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(status: HomeStatus.loading, categories: [], interviews: [], accounts: [], courses: []);
  }
}
