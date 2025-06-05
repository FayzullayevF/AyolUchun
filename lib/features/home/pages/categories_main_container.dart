import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/features/home/widgets/categories_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../authentication/login/widgets/login_title.dart';
import '../blocs/home_bloc.dart';
import '../blocs/home_state.dart';

class CategoriesMainContainer extends StatelessWidget {
  const CategoriesMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(
      builder:(context,state) =>Container(
        width: double.infinity,
        // height: 397.h,
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(color: AppColor.categoryColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginTitle(
              title: "KATEGORIYALAR",
              color: AppColor.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            SizedBox(
              // height: 258.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 16.h,
                  mainAxisExtent: 70.h,
                  // childAspectRatio: 160 / 50
                ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.categories.length,
                itemBuilder: (context, index) => CategoriesItem(
                  title: state.categories[index].title,
                  icon: state.categories[index].icon,
                  totalCourses: state.categories[index].totalCourses,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              width: 355.w,
              height: 44.h,
              decoration: BoxDecoration(
                color: AppColor.categoryContainerColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Barcha kategoriyalar",
                      style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSans",
                      ),
                    ),
                    SvgPicture.asset("assets/icons/arrow-right.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
