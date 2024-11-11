import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

class UserDataAndScore extends StatelessWidget {
  final double score;
  final double sliderScore;

  const UserDataAndScore({
    super.key,
    required this.score,
    required this.sliderScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.h,
        ),
        Image.asset(
          AppImages.profile,
          width: 40.w,
          height: 40.w,
        ),
        RichText(
          text: TextSpan(
            text: 'Hi, ',
            style: TextStyles.size18BlackBold,
            children: [
              TextSpan(
                text: 'Omar',
                style: TextStyles.size16BlackW500,
              )
            ],
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          'Total Score',
          style: TextStyles.size9Black,
        ),
        // Using TweenAnimationBuilder to animate the score
        TweenAnimationBuilder<double>(
          tween: Tween(
            begin: 0.0,
            end: score,
          ),
          duration: Duration(seconds: sliderScore != 0.0 ? 0 : 20),
          curve: Curves.fastOutSlowIn,
          builder: (context, value, child) {
            return Text(
              value.toStringAsFixed(1),
              style: TextStyles.size39GreenBold,
            );
          },
        ),
      ],
    );
  }
}
