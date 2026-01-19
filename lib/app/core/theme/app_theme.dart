import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  // ১. কালার প্যালেট
  static const Color scaffoldBg = Color(0xFF0B0F1A);
  static const Color primaryBlue = Color(0xFF3B82F6);
  static const Color cardColor = Color(0xFF161B22);
  static const Color secondaryText = Colors.grey;

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: scaffoldBg,
    primaryColor: primaryBlue,

    // ২. টেক্সট থিম (বারবার স্টাইল লিখতে হবে না)
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 50.sp,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        color: secondaryText,
        height: 1.6,
      ),
    ),

    // ৩. এলিভেটেড বাটন থিম
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}