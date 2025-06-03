import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_appbar.dart';
import 'package:ayol_uchun/features/home/widgets/buy_course_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppAppbar(height: 133.h),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: Column(children: [BuyCourseContainer()]),
            ),
            Container(width: double.infinity,height: 397.h,decoration: BoxDecoration(color: AppColor.categoryColor,),)
          ],
        ),
      ),
    );
  }
}
