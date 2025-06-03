import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key, required this.height, required this.width, required this.color, required this.title});

  final double height, width;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: AppColor.dangerColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontFamily: "OpenSans", fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
    );
  }
}
