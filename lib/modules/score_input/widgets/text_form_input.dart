import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

class TextFormInput extends StatelessWidget {
  final void Function(String) onChanged;
  final TextEditingController textEditingController;

  const TextFormInput({
    super.key,
    required this.onChanged,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.w,
        right: 35.w,
        top: 25.h,
        bottom: 83.h,
      ),
      child: TextFormField(
        style: TextStyles.size39GreenBold,
        textAlign: TextAlign.center,
        controller: textEditingController,
        onChanged: onChanged,
        maxLength: 10,
        keyboardType: TextInputType.number,
        cursorColor: AppColors.green,
        cursorHeight: 40.h,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );
  }
}
