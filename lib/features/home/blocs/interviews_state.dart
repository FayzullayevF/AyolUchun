import 'package:ayol_uchun/data/models/interviews/interviews_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'interviews_state.freezed.dart';

enum InterviewsStatus { idle, loading, error }

@freezed
abstract class InterviewsState with _$InterviewsState{
  const factory InterviewsState({required InterviewsStatus status,required List<InterviewsModel> interviews}) = _InterviewsState;
  factory InterviewsState.initial(){
    return InterviewsState(status: InterviewsStatus.loading, interviews: []);
  }
}
