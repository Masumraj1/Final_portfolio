import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'contact_info_tile.dart';

class ContactSection extends StatelessWidget {
  final GlobalKey sectionKey;
  final bool isMobile;

  const ContactSection({
    super.key,
    required this.sectionKey,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 80.h,
        horizontal: isMobile ? 20.w : 100.w,
      ),
      color: Colors.blueAccent.withOpacity(0.02),
      child: Column(
        children: [
          Text(
            "Get In Touch",
            style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Container(width: 40.w, height: 3.h, color: Colors.blueAccent),
          SizedBox(height: 50.h),

          Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Contact Details
              Column(
                crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                children: const [
                  ContactInfoTile(
                    icon: Icons.email_outlined,
                    label: "Email Me",
                    value: "masumrana@example.com",
                  ),
                  ContactInfoTile(
                    icon: Icons.phone_android_outlined,
                    label: "Call Me",
                    value: "+880 1XXX XXXXXX",
                  ),
                  ContactInfoTile(
                    icon: Icons.location_on_outlined,
                    label: "Location",
                    value: "Dhaka, Bangladesh",
                  ),
                ],
              ),

              if (!isMobile) SizedBox(width: 100.w),
              if (isMobile) SizedBox(height: 40.h),

              // Action Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 25.h),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                ),
                onPressed: () {
                  // Email/Message লজিক এখানে হবে
                },
                icon: const Icon(Icons.send_rounded, color: Colors.white),
                label: Text(
                  "Let's Work Together",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}