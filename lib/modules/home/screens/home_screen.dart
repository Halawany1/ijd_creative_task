import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/extentions/navigations.dart';
import 'package:ijd_creative_task/core/widgets/app_bar.dart';
import 'package:ijd_creative_task/core/widgets/bottom_nav_bar.dart';
import 'package:ijd_creative_task/core/widgets/custom_button.dart';
import 'package:ijd_creative_task/modules/home/widgets/card_score_user.dart';
import 'package:ijd_creative_task/modules/home/widgets/latest_badge_list_view.dart';
import 'package:ijd_creative_task/modules/home/widgets/popular_badge_list_view.dart';

class HomeScreen extends StatelessWidget {
  final double score;

  const HomeScreen({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CardScoreUser(
              score: score,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              text: 'Continue Challenge',
              onPressed: () {
                context.pop();
              },
            ),
            const LatestBadgeListView(),
            const PopularBadgeListView(),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
