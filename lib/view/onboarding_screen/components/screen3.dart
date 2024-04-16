import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:foodie_app/view/authentication/signup/signup_screen.dart';
import 'package:foodie_app/widgets/app_button.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 19.w, top: 21.h),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 51.w,
                  height: 51.h,
                  child: const CircleAvatar(
                    backgroundColor: AppColors.lightGreyColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 19.h),
            SizedBox(
              width: 291.w,
              height: 291.h,
              child: const CircleAvatar(
                backgroundColor: AppColors.lightGreyColor,
              ),
            ),
            SizedBox(height: AppSize.s31.h),
            Center(
              child: Text(
                'Pick from a wide range of\nfood categories',
                style: AppTextStyle.poppinsFonts(
                  fontSize: FontSizeUtil.f20,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: AppSize.s7.h),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return const SignupScreen();
                    },
                  ),
                );
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
        ),
      ),
    );
  }
}
