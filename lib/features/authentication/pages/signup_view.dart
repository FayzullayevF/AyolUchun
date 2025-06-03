import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/authentication/widgets/signup_view_text_rich.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/colors.dart';
import '../../common/app_icon.dart';
import '../widgets/auth_text_form_field.dart';
import '../widgets/login_title.dart';
import '../widgets/social_media_icon.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 812.h,
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset("assets/images/background.png", height: 812.h, width: double.infinity, fit: BoxFit.cover),
              Positioned(
                top: 100.h,
                left: 20.w,
                right: 20.r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoginTitle(
                      title: "Xush kelibsiz!",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.h,
                    ),
                    SizedBox(height: 8.h),
                    LoginTitle(
                      title: "O‘quv platformasiga kirish uchun quyida berilgan maydonlarni to‘ldirib ro‘yxatdan o‘ting",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                    SizedBox(height: 57.h),
                    LoginTitle(
                      title: "Ro'yxatdan o'tish",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    SizedBox(height: 20.h),
                    AuthTextFormField(
                      prefix: "assets/icons/user.svg",
                      hintText: "Ism",
                      fontWeight: FontWeight.w400,
                      color: AppColor.textFieldTextColor,
                      autoValidateMode: AutovalidateMode.always,
                      size: 14,
                      validator: (value) {},
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 8.h),
                    AuthTextFormField(
                      prefix: "assets/icons/user.svg",
                      hintText: "Familiya",
                      fontWeight: FontWeight.w400,
                      color: AppColor.textFieldTextColor,
                      autoValidateMode: AutovalidateMode.always,
                      size: 14,
                      validator: (value) {},
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 8.h),
                    AuthTextFormField(
                      prefix: "assets/icons/message.svg",
                      hintText: "Elektron pochta",
                      fontWeight: FontWeight.w400,
                      color: AppColor.textFieldTextColor,
                      autoValidateMode: AutovalidateMode.always,
                      size: 14,
                      validator: (value) {},
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 60.h),
                    Divider(color: AppColor.dividerColor, height: 0.5),
                    SizedBox(height: 16.h),
                    LoginTitle(
                      title: "Quydagila orqali kirish",
                      color: AppColor.dividerColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        SocialMediaIcon(svg: "assets/icons/google.svg", title: "Google"),
                        SizedBox(width: 8.w),
                        SocialMediaIcon(svg: "assets/icons/apple.svg", title: "Apple"),
                      ],
                    ),
                    SizedBox(height: 84.h),
                    SignupViewTextRich(),
                    SizedBox(height: 8.h),
                    GestureDetector(onTap: ()=> context.go(Routes.login),child: AppIcon(backgroundColor: AppColor.dangerColor, title: "Davom etish")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
