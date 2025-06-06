import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/home_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 16.h),
      width: 343.w,
      height: 267.h,
      decoration: BoxDecoration(color: AppColor.dangerColor, borderRadius: BorderRadiusGeometry.circular(16)),
      child: Column(
        children: [
          Stack(
            children: [
              Text(
                "👋🏻 Hey, Siz ham ayollar uchun foydali videolar tayyorlay olasizmi? Unda jamoamizga qo‘shiling!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: "OpenSans",
                ),
              ),
              Positioned(
                left: 16.w,
                top: 92.h,
                child: HomeIcon(height: 44.h, width: 11.w, color: Colors.white, title: "Qo'shiling"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
