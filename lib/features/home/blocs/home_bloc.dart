import 'package:ayol_uchun/data/repositories/categories/categories_repository.dart';
import 'package:ayol_uchun/features/home/blocs/home_state.dart';
import 'package:bloc/bloc.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CategoriesRepository _repo;

  HomeBloc({required CategoriesRepository repo}) : _repo = repo, super(HomeState.initial()) {
    on<HomeLoad>(_onLoad);
    add(HomeLoad());
  }

  Future<void> _onLoad(HomeEvent event, Emitter<HomeState> emit) async {
    final categories = await _repo.fetchCategories();
    emit(state.copyWith(status: HomeStatus.success, categories: categories));
  }
}
