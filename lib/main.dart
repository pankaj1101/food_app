import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/core/definations/router.dart';
import 'package:foodie_app/core/definations/routes_name.dart';
import 'package:foodie_app/core/utils/app_colors.dart';
import 'package:foodie_app/viewmodel/forget_password_viewmodel.dart';
import 'package:foodie_app/viewmodel/onboarding_viewmodel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(386, 844),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<OnBoardingViewModel>(
              create: (_) => OnBoardingViewModel()),
          ChangeNotifierProvider<ForgotPasswordViewModel>(
              create: (_) => ForgotPasswordViewModel()),
        ],
        child: MaterialApp(
          title: 'Foodie',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
            ),
            scaffoldBackgroundColor: AppColors.backgroundColor,
            primaryColor: AppColors.primaryColor,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
            useMaterial3: true,
          ),
          initialRoute: RoutesName.splashScreen,
          onGenerateRoute: AppRouter.generateRoute,
        ),
      ),
    );
  }
}
