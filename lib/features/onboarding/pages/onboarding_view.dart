import 'dart:async';

import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      context.go(Routes.login);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/onboarding.png",
              width: 219.w,
              height: 88.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
