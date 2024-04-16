import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/definations/routes_name.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(scrolledUnderElevation: 0.0),
      body: Column(
        children: [_buildTopSection(), _buildOtpFormSection(context)],
      ),
    );
  }

  _buildTopSection() {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10.r),
          Text(
            'Verification Email',
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f20,
              fontWeight: FontWeight.bold,
              fontColor: AppColors.textColor,
            ),
          ),
          Text(
            'Please input the code sent to your email ',
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f10,
              fontWeight: FontWeight.w700,
              fontColor: AppColors.textColor,
            ),
          ),
          Text(
            'anvildesigns@gmail.com',
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f10,
              fontWeight: FontWeight.bold,
              fontColor: AppColors.textColor,
            ),
          ),
          SizedBox(height: 33.r),
        ],
      ),
    );
  }

  _buildOtpFormSection(BuildContext context) {
    PinTheme defaultPinTheme = PinTheme(
      width: 60.r,
      height: 50.r,
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
    );

    return Column(
      children: [
        Pinput(
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          onChanged: (value) {},
        ),
        SizedBox(height: 33.r),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You didn’t receive an OTP?',
              style: AppTextStyle.poppinsFonts(
                fontSize: FontSizeUtil.f10,
                fontWeight: FontWeight.normal,
                fontColor: AppColors.textColor,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.loginScreen),
              child: Text(
                ' Resend',
                style: AppTextStyle.poppinsFonts(
                  fontSize: FontSizeUtil.f10,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.textColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
