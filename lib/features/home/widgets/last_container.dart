import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/home_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(left: 16.w, bottom: 0, top: 16.h),
      width: 343.w,
      height: 267.h,
      decoration: BoxDecoration(color: AppColor.dangerColor, borderRadius: BorderRadiusGeometry.circular(16)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300.w,
                child: Text(
                  "👋🏻 Hey, Siz ham ayollar uchun foydali videolar tayyorlay olasizmi? Unda jamoamizga qo‘shiling!",
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              HomeIcon(
                height: 44.h,
                width: 110.w,
                color: Colors.white,
                title: "Qo'shiling",
                textColor: AppColor.dangerColor,
              ),
            ],
          ),
          Positioned(bottom: 0, right: 0, child: Image.asset("assets/images/sister.png")),
        ],
      ),
    );
  }
}
