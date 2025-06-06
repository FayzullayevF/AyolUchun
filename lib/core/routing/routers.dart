import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/authentication/signup/blocs/signup_bloc.dart';
import 'package:ayol_uchun/features/home/blocs/home_bloc.dart';
import 'package:ayol_uchun/features/home/pages/home_view.dart';
import 'package:ayol_uchun/features/onboarding/pages/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/authentication/confirm_code_view.dart';
import '../../features/authentication/confirm_password_view.dart';
import '../../features/authentication/enter_number_view.dart';
import '../../features/authentication/login/blocs/login_bloc.dart';
import '../../features/authentication/login/pages/login_view.dart';
import '../../features/authentication/signup/pages/signup_view.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginBloc(repo: context.read()),
        child: LoginView(),
      ),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeBloc(
          repo: context.read(),
          interviewsRepo: context.read(),
          socialRepo: context.read(),
          coursesRepo: context.read(),
        ),
        child: HomeView(),
      ),
    ),
    GoRoute(path: Routes.onboarding, builder: (context, state) => OnboardingView()),
    GoRoute(
      path: Routes.signup,
      builder: (context, state) => BlocProvider(
        create: (context) => SignUpBloc(repo: context.read()),
        child: SignupView(),
      ),
    ),
    GoRoute(path: Routes.enterNumber, builder: (context, state) => EnterNumber()),
    GoRoute(path: Routes.confirmPassword, builder: (context, state) => ConfirmPasswordView()),
    GoRoute(path: Routes.confirmCode, builder: (context, state) => ConfirmCodeView()),
  ],
);
