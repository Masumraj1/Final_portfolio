import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}