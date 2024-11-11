import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

class LatestBadgeCard extends StatelessWidget {
  final String badgeName;
  final String badgeImage;
  final Color color;

  const LatestBadgeCard({
    super.key,
    required this.badgeName,
    required this.badgeImage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 120.h,
      margin: EdgeInsets.only(top: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: color,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -25.h,
            right: -15.w,
            child: Image.asset(
              badgeImage,
              height: 105.h,
              width: 90.w,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 10.h,
            child: Text(
              badgeName,
              style: TextStyles.size14WhiteW600,
            ),
          ),
        ],
      ),
    );
  }
}
