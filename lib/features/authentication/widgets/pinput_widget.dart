import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinPutWidget extends StatelessWidget {
  PinPutWidget({super.key});

  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      controller: pinController,
      defaultPinTheme: PinTheme(
        width: 50.w,
        height: 49.h,
        textStyle: TextStyle(
          color: AppColor.textFieldTextColor,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(4))
      ),
    );
  }
}
