import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceCard extends StatelessWidget {
  final String role;
  final String company;
  final String duration;
  final bool isMobile;

  const ExperienceCard({
    super.key,
    required this.role,
    required this.company,
    required this.duration,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      padding: EdgeInsets.all(25.r),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22), // Darker Navy
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.05),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon or Dot (Timeline feel)
          Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.work_outline, color: Colors.blueAccent, size: 20.sp),
          ),
          SizedBox(width: 20.w),

          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      role,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    if (!isMobile)
                      Text(
                        duration,
                        style: TextStyle(color: Colors.blueAccent, fontSize: 14.sp),
                      ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text(
                  company,
                  style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                ),
                if (isMobile) ...[
                  SizedBox(height: 8.h),
                  Text(
                    duration,
                    style: TextStyle(color: Colors.blueAccent, fontSize: 14.sp),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}