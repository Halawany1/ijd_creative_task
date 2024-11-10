import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/widgets/app_bar.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';

class HomeScreen extends StatelessWidget {
  final String score;

  const HomeScreen({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(14.h),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.green,
                  ),
                  width: double.infinity,
                  height: 200.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.r),
                      topLeft: Radius.circular(20.r),
                    ),
                    color: AppColors.yellow,
                  ),
                  width: double.infinity,
                  height: 130.h,
                ),
                Column(
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
                    Text('$score', style: TextStyles.size39GreenBold),
                  ],
                ),
                Positioned(
                  left: 12.w,
                  top: -12.h,
                  child: Image.asset(
                    AppImages.boy,
                    width: 93.w,
                    height: 172.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 8.h,
                  left: 10.w,
                  right: 10.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              8,
                              (index) => Text(
                                    "${index + 1}",
                                    style: TextStyles.size20YellowBold,
                                  )),
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 12.h,
                          inactiveTrackColor: AppColors.green51,
                          activeTrackColor: AppColors.yellow,
                          thumbShape: CustomThumbShape(thumbRadius: 10.h),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 16.0),
                          tickMarkShape: RoundSliderTickMarkShape(),
                          trackShape: RoundedRectSliderTrackShape(),
                        ),
                        child: Slider(
                          value: 3,
                          min: 1,
                          max: 8,
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


