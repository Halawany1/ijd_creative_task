import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';
import 'package:ijd_creative_task/models/latest_badge_model.dart';
import 'package:ijd_creative_task/modules/home/widgets/latest_badge_card.dart';

class LatestBadgeListView extends StatelessWidget {
  const LatestBadgeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.h, bottom: 20.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'LATEST BADGES',
                style: TextStyles.size20GreenBold,
              ),
            ),
          ),
          SizedBox(
            height: 120.h,
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => LatestBadgeCard(
                badgeImage: latestBadges[index].image,
                badgeName: latestBadges[index].name,
                color: latestBadges[index].color,
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 22.h,
              ),
              itemCount: latestBadges.length,
            ),
          )
        ],
      ),
    );
  }
}
