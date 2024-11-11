import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/custom_paints/custom_thumb_shape.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';
import 'package:ijd_creative_task/modules/home/logic/home_cubit.dart';

class CustomSlider extends StatelessWidget {
  final HomeCubit cubit;
  final double score;

  const CustomSlider({
    super.key,
    required this.cubit,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                style: TextStyles.size20YellowBold.copyWith(
                  color: (index + 1).toDouble() <= (score / 1000)
                      ? AppColors.yellow
                      : AppColors.green51,
                ),
              ),
            ),
          ),
        ),
        TweenAnimationBuilder<double>(
          tween: Tween(
            begin: 0.0,
            end: score,
          ),
          duration: const Duration(seconds: 20),
          curve: Curves.fastOutSlowIn,
          builder: (context, value, child) {
            double normalizedValue = value / 1000;
            normalizedValue = normalizedValue > 8.0 ? 8.0 : normalizedValue;
            return SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 12.h,
                inactiveTrackColor: AppColors.green51,
                activeTrackColor: AppColors.yellow,
                thumbShape: CustomThumbShape(thumbRadius: 10.h),
                overlayShape:
                    const RoundSliderOverlayShape(overlayRadius: 16.0),
                tickMarkShape: const RoundSliderTickMarkShape(),
                trackShape: const RoundedRectSliderTrackShape(),
              ),
              child: Slider(
                value: normalizedValue,
                min: 0,
                max: 8,
                onChanged: (value) {},
              ),
            );
          },
        )
      ],
    );
  }
}
