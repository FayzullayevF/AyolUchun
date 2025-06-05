import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/common/home_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../authentication/login/widgets/login_title.dart';

class BuyCourseContainer extends StatelessWidget {
  const BuyCourseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      width: 355.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.h,
        children: [
          Image.asset(
            "assets/images/for_women.png",
            width: 57.w,
            height: 48.h,
            fit: BoxFit.cover,
          ),
          LoginTitle(
            title:
                "Sizda hali boshlangan kurs mavjud emas. Ko‘plab foydali kurslarimiz orasidan bittasini tanlang.",
            color: AppColor.blackColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          HomeIcon(
            height: 34.h,
            width: 150.w,
            color: AppColor.dangerColor,
            title: "Kurs sotib olish",
          ),
        ],
      ),
    );
  }
}
