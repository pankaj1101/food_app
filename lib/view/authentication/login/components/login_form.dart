import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_string.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:foodie_app/view/authentication/forgot_password_screen.dart/forgot_password_screen.dart';
import 'package:foodie_app/widgets/app_button.dart';
import 'package:foodie_app/widgets/custom_textform_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const CustomTextFormField(
          hintText: 'Enter your password',
        ),
        SizedBox(height: AppSize.s5.h),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ForgotPasswordScreen();
            }));
          },
          child: Text(
            AppString.forgorPasswordText,
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f15,
              fontWeight: FontWeight.w700,
              fontColor: AppColors.textColor,
            ),
          ),
        ),
        SizedBox(height: AppSize.s37.h),
        AppButton(
          btnColor: AppColors.primaryColor,
          textColor: AppColors.lightGreyColor,
          onTap: () {
            Clipboard.setData(const ClipboardData(text: 'Hello World!'))
                .then((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Copied to your clipboard !')));
            });
          },
          btnText: AppString.login,
        ),
        SizedBox(height: AppSize.s22.h),
      ],
    );
  }
}
