import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

AppBar appBar() {
  return AppBar(
    title: RichText(
      text: TextSpan(
          text: 'GREEN.',
          style: TextStyles.size20GreenBold,
          children: [
            TextSpan(
              text: 'MIND',
              style: TextStyles.size20YellowBold,
            )
          ]),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.notifications,
          ),
        ),
      )
    ],
  );
}
