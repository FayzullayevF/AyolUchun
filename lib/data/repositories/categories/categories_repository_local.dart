import 'package:ayol_uchun/data/models/categories/categories_model.dart';
import 'package:ayol_uchun/data/repositories/categories/categories_repository_interface.dart';
import 'package:hive/hive.dart';

class CategoriesRepositoryLocal implements ICategoriesRepository{


  @override
  Future<List<CategoriesModel>> fetchCategories()async{
    final Box<CategoriesModel> box = Hive.box<CategoriesModel>("categories1");
    return box.values.toList();
}
}