import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

class CustomButton extends StatelessWidget {
  final bool validate;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.validate,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: MaterialButton(
        color: AppColors.yellow,
        onPressed: validate ? onPressed : null,
        elevation: 0,
        disabledColor: Colors.grey,
        minWidth: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.tennis,
              width: 12.w,
              height: 12.w,
              color: Colors.black,
            ),
            SizedBox(width: 10.w),
            Text(
              'Start',
              style: TextStyles.size16BlackW500,
            )
          ],
        ),
      ),
    );
  }
}
