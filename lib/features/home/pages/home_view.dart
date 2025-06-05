import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_appbar.dart';
import 'package:ayol_uchun/features/home/pages/categories_main_container.dart';
import 'package:ayol_uchun/features/home/widgets/buy_course_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

import '../../authentication/login/widgets/login_title.dart';
import '../blocs/home_bloc.dart';
import '../blocs/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: EdgeInsets.only(left: 16.w, bottom: 16.h, top: 20.h, right: 31.w),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/instagram.svg", width: 32.w, height: 32.h, fit: BoxFit.cover),
                        SvgPicture.asset("assets/icons/tik_tok.svg", width: 32.w, height: 32.h, fit: BoxFit.cover),
                        SvgPicture.asset("assets/icons/youtube.svg", width: 32.w, height: 32.h, fit: BoxFit.cover),
                        SvgPicture.asset("assets/icons/telegram.svg", width: 32.w, height: 32.h, fit: BoxFit.cover),
                        SvgPicture.asset("assets/icons/facebook.svg", width: 32.w, height: 32.h, fit: BoxFit.cover),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              LoginTitle(title: "INTERVIYULAR", color: AppColor.blackColor, fontWeight: FontWeight.bold, fontSize: 18),
              SizedBox(height: 16.h),
              Container(
                width: 228.w,
                height: 251.h,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: Image.asset(
                            "assets/images/background.png",
                            width: 228.w,
                            height: 140.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 7.h),
                        // Row(children: [SvgPicture.asset("assets/icons/clock.svg",width: 16.w,height: 16.h,fit: BoxFit.coverguit add .git commit -m "some changes"git push originmainn main,), Text("data")]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
