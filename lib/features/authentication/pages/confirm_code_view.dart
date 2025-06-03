import 'package:ayol_uchun/features/authentication/widgets/pinput_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/routes.dart';
import '../../../core/utils/colors.dart';
import '../../common/app_icon.dart';
import '../widgets/login_title.dart';

class ConfirmCodeView extends StatelessWidget {
  const ConfirmCodeView({super.key});

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
                      title: "O‘quv platformasiga kirish uchun quyida telefon raqamingizga yuborilgan tasdiqlash kodini kiriting",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                    SizedBox(height: 57.h),
                    LoginTitle(
                      title: "Tasdiqlash kodi",
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    SizedBox(height: 20.h),
                    PinPutWidget(),
                    SizedBox(height: 333.h),
                    GestureDetector(onTap: ()=> context.go(Routes.confirmPassword),child: AppIcon(backgroundColor: AppColor.dangerColor, title: "Kirish")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
