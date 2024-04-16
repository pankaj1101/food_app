import 'package:flutter/material.dart';
import 'package:foodie_app/view/onboarding_screen/components/screen1.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Screen1()),
    );
  }
}
