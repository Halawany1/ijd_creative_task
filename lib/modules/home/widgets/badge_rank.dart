import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

class BadgeRank extends StatelessWidget {
  const BadgeRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          AppImages.badge,
          width: 33.w,
          height: 45.h,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Text(
              'Rank',
              style: TextStyles.size9Black.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              'A',
              style: TextStyles.size14WhiteW600.copyWith(
                fontSize: 17.sp,
              ),
            )
          ]
          ,
        )
      ],
    );
  }
}
