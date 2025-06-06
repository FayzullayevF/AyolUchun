import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/home/blocs/home_bloc.dart';
import 'package:ayol_uchun/features/home/blocs/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InterviewsItem extends StatelessWidget {
  const InterviewsItem({super.key});

  String formatDuration(int totalMinutes) {
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    return '${hours} soat ${minutes} minut';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => SizedBox(
        height: 251.h,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 20.w),
          scrollDirection: Axis.horizontal,
          itemCount: state.interviews.length,
          itemBuilder: (context, index) => Container(
            width: 228.w,
            height: 251.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: Image.network(
                        state.interviews[index].image,
                        width: 228.w,
                        height: 140.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Padding(
                      padding: EdgeInsets.only(left: 14.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/clock.svg",
                                width: 16.w,
                                height: 16.h,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 1.w),
                              Text(
                                formatDuration(
                                  state.interviews[index].duration,
                                ),
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.dividerColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            state.interviews[index].title,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "OpenSans",
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            spacing: 2.w,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/user-three.svg",
                                width: 18.w,
                                height: 18.h,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                state.interviews[index].user,
                                style: TextStyle(
                                  color: AppColor.dividerColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "OpenSans",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
