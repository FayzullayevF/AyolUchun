import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIcon extends StatelessWidget {
   HomeIcon({super.key, required this.height, required this.width,  this.color = AppColor.dangerColor, required this.title, this.textColor = Colors.white});

  final double height, width;
   Color color, textColor;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: textColor, fontFamily: "OpenSans", fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
    );
  }
}
