import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'experience_card.dart';

class ExperienceSection extends StatelessWidget {
  final GlobalKey sectionKey;
  final bool isMobile;

  const ExperienceSection({
    super.key,
    required this.sectionKey,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    // এই ডাটাগুলো আপনি চাইলে আলাদা লিস্ট থেকেও নিতে পারেন
    final experiences = [
      {'role': 'Senior Flutter Developer', 'company': 'Company A', 'duration': '2024 - Present'},
      {'role': 'Software Engineer', 'company': 'Company B', 'duration': '2023 - 2024'},
      {'role': 'Junior Developer', 'company': 'Company C', 'duration': '2022 - 2023'},
    ];

    return Container(
      key: sectionKey,
      padding: EdgeInsets.symmetric(
        vertical: 80.h,
        horizontal: isMobile ? 20.w : 150.w,
      ),
      child: Column(
        children: [
          Text(
            "Experience",
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(width: 40.w, height: 3.h, color: Colors.blueAccent),
          SizedBox(height: 50.h),

          // List of experiences
          ...experiences.map((exp) => ExperienceCard(
            role: exp['role']!,
            company: exp['company']!,
            duration: exp['duration']!,
            isMobile: isMobile,
          )).toList(),
        ],
      ),
    );
  }
}