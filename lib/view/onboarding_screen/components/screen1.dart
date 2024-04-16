import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:foodie_app/view/onboarding_screen/components/screen2.dart';
import 'package:foodie_app/widgets/app_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSize.s63.h),
        Center(
          child: Text(
            'All your favorite recipes\nin one place',
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f20,
              fontWeight: FontWeight.bold,
              fontColor: AppColors.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: AppSize.s35.h),
        SizedBox(
          width: 291.w,
          height: 291.h,
          child: const CircleAvatar(
            backgroundColor: AppColors.lightGreyColor,
          ),
        ),
        SizedBox(height: AppSize.s32.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.',
            textAlign: TextAlign.center,
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f20 / 2,
              fontWeight: FontWeight.normal,
              fontColor: AppColors.textColor,
            ),
          ),
        ),
        SizedBox(height: AppSize.s77.h),
        AppButton(
          btnColor: AppColors.primaryColor,
          textColor: AppColors.lightGreyColor,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const Screen2();
            }));
          },
          btnText: 'Get Started',
        ),
        SizedBox(height: AppSize.s21.h),
        AppButton(
          btnColor: AppColors.lightGreyColor,
          textColor: AppColors.primaryColor,
          onTap: () {},
          btnText: 'Sign up',
        ),
      ],
    );
  }
}
