import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'nav_button.dart';

class CustomNavbar extends StatelessWidget {
  final bool isMobile;
  final Function(GlobalKey) scrollTo;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey expKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  const CustomNavbar({
    super.key,
    required this.isMobile,
    required this.scrollTo,
    required this.aboutKey,
    required this.skillsKey,
    required this.expKey,
    required this.projectsKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      color: Colors.black.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo Section
          Text(
            'MASUM.',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),

          // Action Section
          if (!isMobile)
            Row(
              children: [
                NavButton(title: "About", onTap: () => scrollTo(aboutKey)),
                NavButton(title: "Skills", onTap: () => scrollTo(skillsKey)),
                NavButton(title: "Experience", onTap: () => scrollTo(expKey)),
                NavButton(title: "Projects", onTap: () => scrollTo(projectsKey)),
                SizedBox(width: 20.w),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  ),
                  onPressed: () => scrollTo(contactKey),
                  child: const Text("Contact Me"),
                ),
              ],
            )
          else
            const Icon(Icons.menu),
        ],
      ),
    );
  }
}