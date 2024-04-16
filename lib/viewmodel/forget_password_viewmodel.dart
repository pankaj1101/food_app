import 'package:flutter/material.dart';

class ForgotPasswordViewModel extends ChangeNotifier {
  int _selectedIconIndex = -1;

  int get selectedIconIndex => _selectedIconIndex;

  void selectIcon(int index) {
    _selectedIconIndex = index;
    notifyListeners();
  }
}
