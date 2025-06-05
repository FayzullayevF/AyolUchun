import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/categories/categories_model.dart';

class CategoriesRepository {
  CategoriesRepository({required this.client});

List<CategoriesModel> models = [];
  ApiClient client;

  Future<List<CategoriesModel>> fetchCategories() async {
   final rawCategories = await client.getGenericRequest<List>("/categories/list");
   models = rawCategories.map((e)=> CategoriesModel.fromJson(e)).toList();
   return models;
  }
}
