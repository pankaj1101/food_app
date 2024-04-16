import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';

class AppButton extends StatelessWidget {
  final Color btnColor, textColor;
  final VoidCallback onTap;
  final String btnText;

  const AppButton({
    super.key,
    required this.btnColor,
    required this.textColor,
    required this.onTap,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s340.w,
      height: AppSize.s50.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r5.r),
          ),
        ),
        child: Text(
          btnText,
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f15,
            fontWeight: FontWeight.w700,
            fontColor: textColor,
          ),
        ),
      ),
    );
  }
}
