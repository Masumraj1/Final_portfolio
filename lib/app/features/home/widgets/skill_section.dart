import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'skill_chip.dart';

class SkillsSection extends StatelessWidget {
  final GlobalKey sectionKey;
  final bool isMobile;

  const SkillsSection({
    super.key,
    required this.sectionKey,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> skills = [
      'Flutter',
      'Dart',
      'Firebase',
      'GetX',
      'Bloc',
      'Rest API',
      'Git',
      'Clean Architecture',
      'State Management',
      'CI/CD',
    ];

    return Container(
      key: sectionKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 80.h,
        horizontal: isMobile ? 20.w : 100.w,
      ),
      child: Column(
        children: [
          Text(
            "My Skills",
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: 40.w,
            height: 3.h,
            color: Colors.blueAccent,
          ),
          SizedBox(height: 40.h),

          // Skills List using Wrap for Responsiveness
          Wrap(
            spacing: 20.w,
            runSpacing: 20.h,
            alignment: WrapAlignment.center,
            children: skills.map((s) => SkillChip(label: s)).toList(),
          ),
        ],
      ),
    );
  }
}