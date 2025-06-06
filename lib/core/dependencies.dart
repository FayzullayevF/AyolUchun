import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/repositories/categories/categories_repository.dart';
import 'package:ayol_uchun/data/repositories/categories/categories_repository_local.dart';
import 'package:ayol_uchun/data/repositories/categories/categories_repository_remote.dart';
import 'package:ayol_uchun/data/repositories/course/courses_repository.dart';
import 'package:ayol_uchun/data/repositories/interviews/interviews_repository.dart';
import 'package:ayol_uchun/data/repositories/social/social_account_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/authentication/auth_repository.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => CategoriesRepositoryLocal()),
  Provider(create: (context) => CategoriesRepositoryRemote(client: context.read())),
  Provider(create: (context)=> AuthRepository(client: context.read())),
  Provider(create: (context)=> InterviewsRepository(client: context.read())),
  Provider(create: (context)=> CoursesRepository(client: context.read())),
  Provider(create: (context)=> SocialAccountRepository(client: context.read())),


  Provider(
    create: (context) =>
        CategoriesRepository(client: context.read()),
  ),
];
