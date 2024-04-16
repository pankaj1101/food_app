import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle poppinsFonts({
    required double fontSize,
    required FontWeight fontWeight,
    required Color fontColor,
  }) =>
      GoogleFonts.poppins(
        fontSize: fontSize.r,
        fontWeight: fontWeight,
        color: fontColor,
      );
}
