import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/authentication/signup/blocs/signup_bloc.dart';
import 'package:ayol_uchun/features/authentication/signup/blocs/signup_event.dart';
import 'package:ayol_uchun/features/authentication/signup/blocs/signup_state.dart';
import 'package:ayol_uchun/features/common/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/colors.dart';
import '../../../common/app_icon.dart';
import '../../login/widgets/auth_text_form_field.dart';
import '../../login/widgets/login_title.dart';
import '../../login/widgets/signup_view_text_rich.dart';
import '../../login/widgets/social_media_icon.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  bool? emailIsValid, firstNameIsValid, lastNameIsValid;
  final formKey = GlobalKey<FormState>();
  final auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) async {
          if (state.status == SignUpStatus.idle) {
            context.push(Routes.enterNumber, extra: {
              'firstName': context.read<SignUpBloc>().firstNameController.text.trim(),
              'lastName': context.read<SignUpBloc>().lastNameController.text.trim(),
              'email': context.read<SignUpBloc>().emailNameController.text.trim(),
            },);
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
                  Image.asset(
                    "assets/images/background.png",
                    height: 812.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
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
                          "O‘quv platformasiga kirish uchun quyida berilgan maydonlarni to‘ldirib ro‘yxatdan o‘ting",
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
                          isValid: firstNameIsValid,
                          controller: context.read<SignUpBloc>().firstNameController,
                          prefix: "assets/icons/user.svg",
                          hintText: "Ism",
                          fontWeight: FontWeight.w400,
                          color: AppColor.textFieldTextColor,
                          autoValidateMode: AutovalidateMode.always,
                          size: 14,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "This field is required";
                            }
                            final firstNameExp = RegExp(r"^[A-Za-z\u0400-\u04FF'‘’ʻʼ`-]{2,50}$");
                            if (!firstNameExp.hasMatch(value)) {
                              firstNameIsValid = false;
                              return "Enter valid name";
                            }
                            firstNameIsValid = true;
                            return null;
                          },
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 8.h),
                        AuthTextFormField(
                          isValid: lastNameIsValid,
                          controller: context.read<SignUpBloc>().lastNameController,
                          prefix: "assets/icons/user.svg",
                          hintText: "Familiya",
                          fontWeight: FontWeight.w400,
                          color: AppColor.textFieldTextColor,
                          autoValidateMode: AutovalidateMode.always,
                          size: 14,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              lastNameIsValid = false;
                              return "This field is required";
                            }
                            final lastNameExp = RegExp(r"^[A-Za-z\u0400-\u04FF'‘’ʻʼ`-]{2,50}$");
                            if (!lastNameExp.hasMatch(value)) {
                              lastNameIsValid = false;
                              return "Enter valid surname";
                            }
                            lastNameIsValid = true;
                            return null;
                          },
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 8.h),
                        AuthTextFormField(
                          isValid: emailIsValid,
                          controller: context.read<SignUpBloc>().emailNameController,
                          prefix: "assets/icons/message.svg",
                          hintText: "Elektron pochta",
                          fontWeight: FontWeight.w400,
                          color: AppColor.textFieldTextColor,
                          autoValidateMode: AutovalidateMode.always,
                          size: 14,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              emailIsValid = false;
                              return "This field is required";
                            }
                            final emailExp = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w{2,}$");
                            if (!emailExp.hasMatch(value)) {
                              emailIsValid = false;
                              return "Enter valid email";
                            }
                            emailIsValid = true;
                            return null;
                          },
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
                        SizedBox(height: 84.h),
                        SignupViewTextRich(),
                        SizedBox(height: 8.h),
                        GestureDetector(
                          onTap: () {
                            final formState = formKey.currentState;
                            if(formState != null && formState.validate()){
                              context.read<SignUpBloc>().add(SignUpLoad());
                              context.go(Routes.login);
                            }
                          },
                          child: AppIcon(backgroundColor: AppColor.dangerColor, title: "Davom etish"),
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
