import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutSection extends StatelessWidget {
  final GlobalKey sectionKey;
  final bool isMobile;

  const AboutSection({
    super.key,
    required this.sectionKey,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey, // এই কী-র মাধ্যমেই স্ক্রল লজিক কাজ করবে
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20.w : 150.w,
        vertical: 80.h,
      ),
      child: Column(
        children: [
          // Section Title
          Text(
            "About Me",
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 10.h),

          // Decorative Underline
          Container(
            width: 60.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          SizedBox(height: 30.h),

          // About Description
          Text(
              "I am Md. Masum Rana, a Mobile Application Developer at ASL Systems Ltd. My journey began with a year of dedicated self-learning, which paved the way for my 2+ years of professional experience in building high-quality Flutter apps.Currently pursuing a BBA at ZNRF University (ZUMS), I bridge the gap between business logic and technical excellence. Beyond the code, I am a passionate bike rider who thrives on logic, discipline, and the open road.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.grey.shade400,
              height: 1.6, // লাইন হাইট বাড়ালে পড়তে সুবিধা হয়
            ),
          ),


        ],
      ),
    );
  }

}