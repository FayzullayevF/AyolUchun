import 'package:ayol_uchun/data/models/categories/categories_model.dart';

abstract interface class ICategoriesRepository {
  Future<List<CategoriesModel>> fetchCategories();
}