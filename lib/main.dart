import 'package:flutter/material.dart';

import 'app/core/app_constants/app_colors.dart';
import 'app/features/screens/home_screen.dart';


void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masum Rana Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.secondary,
        fontFamily: 'Poppins',
      ),
      home: const HomeScreen(),
    );
  }
}
