import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/interviews/interviews_model.dart';

class InterviewsRepository {
  final ApiClient client;
  InterviewsRepository({required this.client});
  List<InterviewsModel> models = [];

  Future<List<InterviewsModel>> fetchInterviews()async{
  final rawInterviews = await client.getGenericRequest<List>("/interviews/list",queryParams: {"limit": 1});
  models = rawInterviews.map((e)=> InterviewsModel.fromJson(e)).toList();
  return models;
  }
}