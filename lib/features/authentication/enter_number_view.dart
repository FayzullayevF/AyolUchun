import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/colors.dart';
import '../common/app_icon.dart';
import 'login/widgets/auth_text_form_field.dart';
import 'login/widgets/login_title.dart';

class EnterNumber extends StatelessWidget {
  EnterNumber({super.key,});
  bool? isValid;
  final  controller = TextEditingController();

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
                      title: "O‘quv platformasiga kirish uchun telefon raqamingizni kiriting",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                    SizedBox(height: 57.h),
                    LoginTitle(
                      title: "Telefon raqami",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    SizedBox(height: 20.h),
                    AuthTextFormField(
                      isValid: isValid,
                      controller: controller,
                      prefix: "assets/icons/phone.svg",
                      hintText: "+998",
                      fontWeight: FontWeight.w400,
                      color: AppColor.textFieldTextColor,
                      autoValidateMode: AutovalidateMode.always,
                      size: 14,
                      validator: (value) {},
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 382.h),
                    GestureDetector(
                      onTap: () => context.go(Routes.confirmCode),
                      child: AppIcon(backgroundColor: AppColor.dangerColor, title: "Kirish"),
                    ),
                    SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () => context.go(Routes.signup),
                      child: AppIcon(backgroundColor: AppColor.darkBlueColor, title: "Ro'yxatdan o'tish"),
                    ),
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
