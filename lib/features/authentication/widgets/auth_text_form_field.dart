import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextFormField extends StatefulWidget {
  AuthTextFormField({
    super.key,
    this.suffix = "",
    required this.prefix,
    required this.hintText,
    required this.fontWeight,
    required this.color,
    required this.autoValidateMode,
    required this.size,
    required this.validator,
    this.isValid,
    required this.keyboardType,
  });

  final String hintText;
  String? suffix;
  final String prefix;
  final FontWeight fontWeight;
  final Color color;
  final AutovalidateMode autoValidateMode;
  final double size;
  final String? Function(String?) validator;
  final bool? isValid;
  final TextInputType keyboardType;

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: controller,
      validator: widget.validator,
      autovalidateMode: widget.autoValidateMode,
      style: TextStyle(color: AppColor.textFieldTextColor, fontSize: 14, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        isDense: true,
        fillColor: Colors.white,
        filled: true,
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: SvgPicture.asset(widget.suffix!),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColor.textFieldTextColor,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 1
        ),
        errorStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w400,
          fontFamily: "OpenSans",
          fontSize: widget.size,
        ),
        prefixIcon: Padding(
          padding:  EdgeInsets.symmetric(vertical: 12.h),
          child: SvgPicture.asset(widget.prefix),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: widget.isValid != null && widget.isValid! ? AppColor.successGreen : AppColor.textFieldTextColor,
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
