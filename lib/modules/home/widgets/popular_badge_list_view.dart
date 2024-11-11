import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';
import 'package:ijd_creative_task/modules/home/widgets/popular_challenges_card.dart';

class PopularBadgeListView extends StatelessWidget {
  const PopularBadgeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'POPULAR CHALENGES',
              style: TextStyles.size20GreenBold,
            ),
          ),
        ),
        SizedBox(
          height: 115.h,
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const PopularChallengesCard();
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 22.w,
            ),
          ),
        ),
      ],
    );
  }
}
