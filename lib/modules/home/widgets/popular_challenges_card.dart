import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';

class PopularChallengesCard extends StatelessWidget {
  const PopularChallengesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 115.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: AppColors.green,
      ),
      padding: EdgeInsets.only(left: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.coinTree,
            width: 80.w,
            height: 80.w,
            fit: BoxFit.cover,
          ),
          Image.asset(
            AppImages.tree,
            width: 144.w,
            height: 144.w,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
