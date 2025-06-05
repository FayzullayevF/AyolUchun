import 'package:ayol_uchun/core/dependencies.dart';
import 'package:ayol_uchun/core/routing/routers.dart';
import 'package:ayol_uchun/data/models/categories/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'data/models/categories/categories_adapter.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final dir = await getApplicationCacheDirectory();
  // Hive.init(dir.path);
  // Hive.registerAdapter(CategoriesModelAdapter());
  //
  // await Hive.openBox<CategoriesModel>("categories1");
  // Hive.close();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MultiBlocProvider(
        providers: providers,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [Locale("uz"), Locale("en")],
          locale: Locale("uz"),
        ),
      ),
    );
  }
}
