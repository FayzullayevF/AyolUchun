import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/authentication/pages/login_view.dart';
import 'package:ayol_uchun/features/home/pages/home_view.dart';
import 'package:ayol_uchun/features/onboarding/pages/onboarding_view.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(path: Routes.login, builder: (context, state) => LoginView()),
    GoRoute(path: Routes.home, builder: (context, state) => HomeView()),
    GoRoute(path: Routes.onboarding, builder: (context, state) => OnboardingView()),


  ],
);
