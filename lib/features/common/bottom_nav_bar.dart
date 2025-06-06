import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24.w, top: 13.h, right: 24.w, bottom: 33.h),
      width: double.infinity,
      height: 90.h,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomColumn(svg: "assets/icons/home.svg", text: "Asosiy", main: true),
          BottomColumn(svg: "assets/icons/courses.svg", text: "Kurslar"),
          BottomColumn(svg: "assets/icons/blog.svg", text: "Blog"),
          BottomColumn(svg: "assets/icons/user-two.svg", text: "Kabinet"),
        ],
      ),
    );
  }
}

class BottomColumn extends StatelessWidget {
  BottomColumn({super.key, required this.svg, required this.text, this.main = false});

  final String svg;
  final String text;
  bool main;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        SvgPicture.asset(svg, width: 24.w, height: 24.h, fit: BoxFit.cover),
        Text(
          text,
          style: TextStyle(
            color: main ? AppColor.blackColor : AppColor.dividerColor,
            fontFamily: "OpenSans",
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
