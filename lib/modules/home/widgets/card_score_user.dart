import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';
import 'package:ijd_creative_task/modules/home/logic/home_cubit.dart';
import 'package:ijd_creative_task/modules/home/widgets/badge_rank.dart';
import 'package:ijd_creative_task/modules/home/widgets/custom_slider.dart';
import 'package:ijd_creative_task/modules/home/widgets/user_data_and_score.dart';

class CardScoreUser extends StatelessWidget {
  final double score;

  const CardScoreUser({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = context.read<HomeCubit>();
          return Padding(
            padding: EdgeInsets.all(14.h),
            child: Stack(
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
                UserDataAndScore(
                  score: score,
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
                  right: 30.w,
                  top: 0.h,
                  child: BadgeRank(),
                ),
                Positioned(
                  bottom: 8.h,
                  left: 10.w,
                  right: 10.w,
                  child: CustomSlider(
                    cubit: cubit,
                    score: score,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
