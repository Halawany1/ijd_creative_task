import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/extentions/navigations.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';
import 'package:ijd_creative_task/core/widgets/app_bar.dart';
import 'package:ijd_creative_task/modules/home/screens/home_screen.dart';
import 'package:ijd_creative_task/modules/score_input/logic/score_input_cubit.dart';
import 'package:ijd_creative_task/modules/score_input/widgets/custom_button.dart';
import 'package:ijd_creative_task/modules/score_input/widgets/text_form_input.dart';

class ScoreInputScreen extends StatelessWidget {
  const ScoreInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scoreController = TextEditingController();
    return BlocProvider(
      create: (context) => ScoreInputCubit(),
      child: BlocBuilder<ScoreInputCubit, ScoreInputState>(
        builder: (context, state) {
          var cubit = context.read<ScoreInputCubit>();
          return Scaffold(
            appBar: appBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 66.h),
                    child: Text(
                      'Enter your score',
                      style: TextStyles.size20GreenBold,
                    ),
                  ),
                  TextFormInput(
                    textEditingController: scoreController,
                    onChanged: (value) {
                      cubit.updateScore(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      if (double.tryParse(value)! < 1000.0 ||
                          double.tryParse(value)! > 8000.0) {
                        return 'Please enter score between 1000 and 8000';
                      }
                      return null;
                    },
                  ),
                  CustomButton(
                    validate: cubit.score.isNotEmpty &&
                        double.tryParse(cubit.score)! >= 1000.0 &&
                        double.tryParse(cubit.score)! <= 8000.0,
                    onPressed: () {
                      context.push(
                        HomeScreen(
                          score: double.parse(cubit.score),
                        ),
                      );
                    },
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
