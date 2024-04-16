import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/definations/routes_name.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_string.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:foodie_app/view/authentication/signup/components/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return Scaffold(
      // appbar
      appBar: AppBar(scrolledUnderElevation: 0.0),

      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top section
              _buildTopHeaderSection(),
              // signup form
              const SignUpForm(),
              // footter section
              _buildFooterSection(context),
            ],
          ),
        ),
      )),
    );
  }

  _buildTopHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 31.h),
        Text(
          'Sign Up',
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f20,
            fontWeight: FontWeight.bold,
            fontColor: AppColors.textColor,
          ),
        ),
        Text(
          'Create your account now!',
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f10,
            fontWeight: FontWeight.normal,
            fontColor: AppColors.textColor,
          ),
        ),
        SizedBox(height: AppSize.s16.h),
      ],
    );
  }

  _buildFooterSection(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.haveAnAccount,
              style: AppTextStyle.poppinsFonts(
                fontSize: FontSizeUtil.f10,
                fontWeight: FontWeight.normal,
                fontColor: AppColors.textColor,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.loginScreen),
              child: Text(
                ' ${AppString.login}',
                style: AppTextStyle.poppinsFonts(
                  fontSize: FontSizeUtil.f10,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.textColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 160.h),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'By choosing to register you agree to our',
                style: AppTextStyle.poppinsFonts(
                  fontSize: FontSizeUtil.f10,
                  fontWeight: FontWeight.normal,
                  fontColor: AppColors.textColor,
                ),
              ),
              Text(
                'Terms and Privacy Policy',
                style: AppTextStyle.poppinsFonts(
                  fontSize: FontSizeUtil.f10,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 48.h),
      ],
    );
  }
}
