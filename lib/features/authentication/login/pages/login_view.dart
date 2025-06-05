import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_icon.dart';
import 'package:ayol_uchun/features/common/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../blocs/login_bloc.dart';
import '../blocs/login_event.dart';
import '../blocs/login_state.dart';
import '../widgets/auth_text_form_field.dart';
import '../widgets/login_title.dart';
import '../widgets/social_media_icon.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final auth = AuthService();

  final formKey = GlobalKey<FormState>();

  bool? phoneNumberValid, passwordValid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) async {
          if (state.status == LoginStatus.idle) {
            context.push(Routes.home);
          }
        },
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                          title:
                              "O‘quv platformasiga kirish uchun quyida elektron  pochtangiz va parolingizni kiriting",
                          color: AppColor.backgroundColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                        SizedBox(height: 57.h),
                        LoginTitle(
                          title: "Kirish",
                          color: AppColor.backgroundColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                        SizedBox(height: 20.h),
                        AuthTextFormField(
                          controller: context.read<LoginBloc>().phoneNumberController,
                          isValid: phoneNumberValid,
                          prefix: "assets/icons/phone.svg",
                          hintText: "+998",
                          fontWeight: FontWeight.w400,
                          color: AppColor.textFieldTextColor,
                          autoValidateMode: AutovalidateMode.always,
                          size: 14,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              phoneNumberValid = false;
                              return "This field is required";
                            }
                            final phoneNumberExp = RegExp(r'^\+998\d{9}$');
                            if (!phoneNumberExp.hasMatch(value)) {
                              phoneNumberValid = false;
                              return "Enter valid phone number";
                            }
                            phoneNumberValid = true;
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(height: 8.h),
                        AuthTextFormField(
                          isValid: passwordValid,
                          controller: context.read<LoginBloc>().passwordController,
                          suffix: "assets/icons/eye.svg",
                          prefix: "assets/icons/lock.svg",
                          hintText: "Parol",
                          fontWeight: FontWeight.w400,
                          color: AppColor.textFieldTextColor,
                          autoValidateMode: AutovalidateMode.always,
                          size: 14,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              passwordValid = false;
                              return "This field is required";
                            }
                            passwordValid = true;
                            return null;
                          },
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 12.h),
                        LoginTitle(
                          title: "Parolni unutdingizmi",
                          color: AppColor.backgroundColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),

                        SizedBox(height: 129.h),
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
                            GestureDetector(
                              onTap: auth.signInWithGoogle,
                              child: SocialMediaIcon(svg: "assets/icons/google.svg", title: "Google"),
                            ),
                            SizedBox(width: 8.w),
                            GestureDetector(
                              onTap: auth.signInWithApple,
                              child: SocialMediaIcon(svg: "assets/icons/apple.svg", title: "Apple"),
                            ),
                          ],
                        ),
                        SizedBox(height: 32.h),
                        GestureDetector(
                          onTap: () {
                            final formState = formKey.currentState;
                            if (formState != null && formState.validate()) {
                              context.read<LoginBloc>().add(LoginLoad());
                              context.push(Routes.home);
                            }
                          },
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
        ),
      ),
    );
  }
}
