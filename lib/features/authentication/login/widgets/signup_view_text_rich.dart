import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class SignupViewTextRich extends StatelessWidget {
  const SignupViewTextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "Tizimga kirish orqali siz ",
            style: TextStyle(
              color: AppColor.dividerColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "OpenSans",
            ),
          ),
          TextSpan(
            text: "foydalanish shartlari",
            style: TextStyle(
              color: AppColor.dangerColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "OpenSans",
            ),
          ),
          TextSpan(
            text: " va ",
            style: TextStyle(
              color: AppColor.dividerColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "OpenSans",
            ),
          ),
          TextSpan(
            text: "maxfiylik siyosatiga ",
            style: TextStyle(
              color: AppColor.dangerColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "OpenSans",
            ),
          ),
          TextSpan(
            text: "roziligizni tasdiqlaysiz",
            style: TextStyle(
              color: AppColor.dividerColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "OpenSans",
            ),
          ),
        ],
      ),
    );
  }
}
