import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/categories/categories_model.dart';
import 'package:ayol_uchun/data/repositories/categories/categories_repository_interface.dart';
import 'package:hive/hive.dart';

class CategoriesRepositoryRemote implements ICategoriesRepository {
  CategoriesRepositoryRemote({required this.client});

  final Box<CategoriesModel> box = Hive.box<CategoriesModel>("categories1");

  final ApiClient client;
  // List<CategoriesModel> model = [];

  @override
  Future<List<CategoriesModel>> fetchCategories() async {
    final Box<CategoriesModel> box = Hive.box<CategoriesModel>("categories1");
    final rawCategories = await client.getGenericRequest<List>("/categories/list");
    final categories = rawCategories.map((e)=> CategoriesModel.fromJson(e)).toList();
    await box.clear();
    await box.addAll(categories);
    return categories;
  }
}
