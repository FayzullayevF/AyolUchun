import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_appbar.dart';
import 'package:ayol_uchun/features/common/bottom_nav_bar.dart';
import 'package:ayol_uchun/features/home/widgets/social_media.dart';
import 'package:ayol_uchun/features/home/widgets/buy_course_container.dart';
import 'package:ayol_uchun/features/home/widgets/categories_main_container.dart';
import 'package:ayol_uchun/features/home/widgets/interviews_item.dart';
import 'package:ayol_uchun/features/home/widgets/last_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../authentication/login/widgets/login_title.dart';
import '../blocs/home_bloc.dart';
import '../blocs/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColor.backgroundColor,
      appBar: AppAppbar(height: 133.h),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
                child: Column(children: [BuyCourseContainer()]),
              ),
              CategoriesMainContainer(),
              SizedBox(height: 24.h),
              Container(
                width: 335.w,
                height: 115.h,
                padding: EdgeInsets.only(
                  left: 16.w,
                  bottom: 16.h,
                  top: 20.h,
                  right: 31.w,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ijtimoiy tarmoqlarimiz:",
                      style: TextStyle(
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "OpenSans",
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SocialMedia(accounts: state.accounts,),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    LoginTitle(
                      title: "INTERVIYULAR",
                      color: AppColor.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    SizedBox(height: 16.h),
                    InterviewsItem(),
                    SizedBox(height: 16.h),
                    Row(
                      spacing: 4.w,
                      children: [
                        LoginTitle(
                          title: "Barcha intervyular",
                          color: AppColor.dividerColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        SvgPicture.asset(
                          "assets/icons/arrow-right.svg",
                          width: 20.w,
                          height: 20.h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              LastContainer(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
