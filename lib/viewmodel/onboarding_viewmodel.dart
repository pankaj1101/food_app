import 'package:flutter/material.dart';
import 'package:foodie_app/view/onboarding_screen/components/screen1.dart';
import 'package:foodie_app/view/onboarding_screen/components/screen2.dart';
import 'package:foodie_app/view/onboarding_screen/components/screen3.dart';

class OnBoardingViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  final List<StatelessWidget> screenList = [
    const Screen1(),
    const Screen2(),
    const Screen3()
  ];

  onChangeScreen() {
    selectedIndex++;
    notifyListeners();
  }
}
