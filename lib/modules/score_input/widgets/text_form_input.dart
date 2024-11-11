import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';
import 'package:ijd_creative_task/core/theme/text_style.dart';

class TextFormInput extends StatelessWidget {
  final void Function(String) onChanged;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;

  const TextFormInput({
    super.key,
    required this.onChanged,
    required this.textEditingController,
    required this.validator,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            style: TextStyles.size39GreenBold,
            textAlign: TextAlign.center,
            controller: textEditingController,
            onChanged: onChanged,
            maxLength: 10,
            keyboardType: TextInputType.number,
            cursorColor: AppColors.green,
            cursorHeight: 40.h,
            validator: validator,
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
          Builder(
            builder: (context) {
              final errorText = validator?.call(textEditingController.text);
              return errorText != null
                  ? Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Text(
                        errorText,
                        style: TextStyles.size39GreenBold.copyWith(
                          color: Colors.red,
                          fontSize: 14.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
