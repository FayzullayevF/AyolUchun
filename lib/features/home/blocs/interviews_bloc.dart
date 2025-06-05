import 'package:ayol_uchun/data/repositories/interviews/interviews_repository.dart';
import 'package:ayol_uchun/features/home/blocs/interviews_event.dart';
import 'package:ayol_uchun/features/home/blocs/interviews_state.dart';
import 'package:bloc/bloc.dart';

class InterviewsBloc extends Bloc<InterviewsEvent, InterviewsState> {
  final InterviewsRepository _repo;

  InterviewsBloc({required InterviewsRepository repo}) : _repo = repo, super(InterviewsState.initial()) {
    on<InterviewsLoad>(_onLoad);
  }

  Future<void> _onLoad(InterviewsEvent event, Emitter<InterviewsState> emit) async {
    final interviews = await _repo.fetchInterviews();
    emit(state.copyWith(status: InterviewsStatus.idle, interviews: interviews));
  }
}
