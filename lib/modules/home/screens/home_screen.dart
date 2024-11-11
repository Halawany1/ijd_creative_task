import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/widgets/app_bar.dart';
import 'package:ijd_creative_task/modules/home/logic/home_cubit.dart';
import 'package:ijd_creative_task/modules/home/widgets/custom_slider.dart';
import 'package:ijd_creative_task/modules/home/widgets/user_data_and_score.dart';

class HomeScreen extends StatelessWidget {
  final double score;

  const HomeScreen({
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
                      UserDataAndScore(
                        score: cubit.sliderValue != 0.0
                            ? cubit.sliderValue
                            : score,
                        sliderScore: cubit.sliderValue,
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
                        child: CustomSlider(
                          cubit: cubit,
                          score: score,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
