import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_string.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:foodie_app/widgets/app_button.dart';
import 'package:foodie_app/widgets/custom_textform_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f15,
            fontWeight: FontWeight.w700,
            fontColor: AppColors.textColor,
          ),
        ),
        SizedBox(height: AppSize.s5.h),
        const CustomTextFormField(
          hintText: 'Full Name',
        ),
        SizedBox(height: AppSize.s14.h),
        Text(
          'Email',
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f15,
            fontWeight: FontWeight.w700,
            fontColor: AppColors.textColor,
          ),
        ),
        SizedBox(height: AppSize.s5.h),
        const CustomTextFormField(
          hintText: 'Enter your email',
        ),
        SizedBox(height: AppSize.s14.h),
        Text(
          'Password',
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f15,
            fontWeight: FontWeight.w700,
            fontColor: AppColors.textColor,
          ),
        ),
        SizedBox(height: AppSize.s5.h),
        const CustomTextFormField(
          hintText: 'Enter your password',
        ),
        SizedBox(height: AppSize.s69.h),
        AppButton(
          btnColor: AppColors.primaryColor,
          textColor: AppColors.lightGreyColor,
          onTap: () {},
          btnText: AppString.signUp,
        ),
        SizedBox(height: AppSize.s13.h),
      ],
    );
  }
}
