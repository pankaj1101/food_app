import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  const CustomTextFormField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: AppColors.lightGreyColor,
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyle.poppinsFonts(
          fontSize: FontSizeUtil.f10,
          fontWeight: FontWeight.normal,
          fontColor: AppColors.textFieldHintColor,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppPadding.p9.w,
          vertical: AppPadding.p18.h,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.r5.r,
          ),
          borderSide: BorderSide.none,
        ),
        // focusedBorder
      ),
    );
  }
}
