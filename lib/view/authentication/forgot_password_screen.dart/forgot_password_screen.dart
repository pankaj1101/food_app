import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/definations/routes_name.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/core/utils/app_size.dart';
import 'package:foodie_app/core/utils/app_string.dart';
import 'package:foodie_app/core/utils/app_textstyle.dart';
import 'package:foodie_app/core/utils/font_utils.dart';
import 'package:foodie_app/viewmodel/forget_password_viewmodel.dart';
import 'package:foodie_app/widgets/app_button.dart';
import 'package:provider/provider.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ForgotPasswordViewModel(),
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopHeaderSection(),
              _iconCard(
                iconData: Icons.mail_outline_rounded,
                text: 'Email',
                index: 0,
              ),
              SizedBox(height: AppSize.s38.h),
              _iconCard(
                iconData: Icons.call,
                text: 'Phone',
                index: 1,
              ),
              SizedBox(height: AppSize.s49.h),
              AppButton(
                btnColor: AppColors.primaryColor,
                textColor: AppColors.white,
                btnText: AppString.continueText,
                onTap: () {
                 Navigator.pushNamed(context,RoutesName.otpScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  _iconCard({
    required IconData iconData,
    required String text,
    required int index,
  }) {
    return Consumer<ForgotPasswordViewModel>(
      builder: (context, iconSelectionProvider, _) {
        return InkWell(
          onTap: () {
            Provider.of<ForgotPasswordViewModel>(context, listen: false)
                .selectIcon(index);
          },
          child: Container(
            height: 50.h,
            width: 340.w,
            decoration: BoxDecoration(
              color: iconSelectionProvider.selectedIconIndex == index
                  ? AppColors.primaryColor // Change color if selected
                  : AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(
                AppRadius.r5.r,
              ),
              border: Border.all(),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(AppPadding.p8.r),
                  child: Container(
                    width: AppSize.s34.w,
                    height: AppSize.s34.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: Icon(iconData, color: AppColors.textColor),
                  ),
                ),
                Text(
                  text,
                  style: AppTextStyle.poppinsFonts(
                    fontSize: FontSizeUtil.f15,
                    fontWeight: FontWeight.w700,
                    fontColor: iconSelectionProvider.selectedIconIndex == index
                        ? AppColors.white // Change text color if selected
                        : AppColors.textColor,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  _buildTopHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 31.r),
        Text(
          AppString.forgorPasswordText,
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f20,
            fontWeight: FontWeight.bold,
            fontColor: AppColors.textColor,
          ),
        ),
        Text(
          AppString.forgotPasswordSubtitleText,
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f10,
            fontWeight: FontWeight.normal,
            fontColor: AppColors.textColor,
          ),
        ),
        SizedBox(height: AppSize.s52.h),
      ],
    );
  }
}
