import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/app_appbar.dart';
import 'package:ayol_uchun/features/home/widgets/buy_course_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../authentication/login/widgets/login_title.dart';
import '../blocs/home_bloc.dart';
import '../blocs/home_state.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.title, required this.icon, required this.totalCourses});

  final String title;
  final String icon;
  final int totalCourses;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8.w, vertical: 5.h),
      width: 160.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: AppColor.categoryContainerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColor.blackColor,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans",
              fontSize: 12,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Jami ${totalCourses}ta dars",
                style: TextStyle(
                  color: AppColor.dividerColor,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              Image.network(icon, width: 40.w, height: 40.h, fit: BoxFit.cover),
            ],
          ),
        ],
      ),
    );
  }
}
