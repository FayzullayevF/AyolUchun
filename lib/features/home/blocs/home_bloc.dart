import 'package:ayol_uchun/data/repositories/categories/categories_repository.dart';
import 'package:ayol_uchun/data/repositories/course/courses_repository.dart';
import 'package:ayol_uchun/data/repositories/interviews/interviews_repository.dart';
import 'package:ayol_uchun/data/repositories/social/social_account_repository.dart';
import 'package:ayol_uchun/features/home/blocs/home_state.dart';
import 'package:bloc/bloc.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CategoriesRepository _categoriesRepo;
  final InterviewsRepository _interviewsRepo;
  final CoursesRepository _coursesRepo;
  final SocialAccountRepository _socialRepo;

  HomeBloc({
    required CategoriesRepository repo,
    required InterviewsRepository interviewsRepo,
    required CoursesRepository coursesRepo,
    required SocialAccountRepository socialRepo,
  }) : _categoriesRepo = repo,
       _coursesRepo = coursesRepo,
       _interviewsRepo = interviewsRepo,
       _socialRepo = socialRepo,
       super(HomeState.initial()) {
    on<HomeLoad>(_onLoad);
    add(HomeLoad());
  }

  Future<void> _onLoad(HomeEvent event, Emitter<HomeState> emit) async {
    final categories = await _categoriesRepo.fetchCategories();
    emit(state.copyWith(status: HomeStatus.success, categories: categories));
    final interviews = await _interviewsRepo.fetchInterviews();
    emit(state.copyWith(status: HomeStatus.success, interviews: interviews));
  }
}
