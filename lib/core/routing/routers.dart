import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/authentication/pages/confirm_code_view.dart';
import 'package:ayol_uchun/features/authentication/pages/confirm_password_view.dart';
import 'package:ayol_uchun/features/authentication/pages/enter_number_view.dart';
import 'package:ayol_uchun/features/authentication/pages/login_view.dart';
import 'package:ayol_uchun/features/authentication/pages/signup_view.dart';
import 'package:ayol_uchun/features/home/pages/home_view.dart';
import 'package:ayol_uchun/features/onboarding/pages/onboarding_view.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(path: Routes.login, builder: (context, state) => LoginView()),
    GoRoute(path: Routes.home, builder: (context, state) => HomeView()),
    GoRoute(path: Routes.onboarding, builder: (context, state) => OnboardingView()),
    GoRoute(path: Routes.signup, builder: (context, state) => SignupView()),
    GoRoute(path: Routes.enterNumber, builder: (context, state) => EnterNumber()),
    GoRoute(path: Routes.confirmPassword, builder: (context, state) => ConfirmPasswordView()),
    GoRoute(path: Routes.confirmCode, builder: (context, state) => ConfirmCodeView()),


  ],
);
