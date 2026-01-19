import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_web/app/features/home/widgets/custom_network_image.dart';
import 'package:url_launcher/url_launcher.dart'; // লিঙ্ক ওপেন করার জন্য এটি প্রয়োজন

class ExperienceCard extends StatelessWidget {
  final String role;
  final String company;
  final String duration;
  final String logoUrl;
  final String companyUrl;
  final bool isMobile;
  final bool isLast;

  const ExperienceCard({
    super.key,
    required this.role,
    required this.company,
    required this.duration,
    required this.logoUrl,
    required this.companyUrl,
    required this.isMobile,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          // Timeline logic
          Column(
            children: [
              Container(
                width: 14.r,
                height: 14.r,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.blueAccent.withOpacity(0.3), blurRadius: 10)
                  ],
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(width: 2.w, color: Colors.blueAccent.withOpacity(0.2)),
                ),
            ],
          ),
          SizedBox(width: 20.w),

          Expanded(
            child: InkWell( // ক্লিকের জন্য InkWell ব্যবহার করা হয়েছে
              onTap: () async {
                final Uri url = Uri.parse(companyUrl);
                if (!await launchUrl(url)) throw 'Could not launch $url';
              },
              borderRadius: BorderRadius.circular(20.r),
              child: Container(
                margin: EdgeInsets.only(bottom: 30.h),
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                  color: const Color(0xFF161B22),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: Colors.white.withOpacity(0.05)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [

                        CustomNetworkImage(imageUrl: logoUrl, height: 50.r, width: 50.r),
                        // কোম্পানি লোগো
                        // Container(
                        //   width: 50.r,
                        //   height: 50.r,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white, // লোগোর ব্যাকগ্রাউন্ড সাদা হলে ভালো দেখায়
                        //     borderRadius: BorderRadius.circular(10.r),
                        //     image: DecorationImage(
                        //       image: NetworkImage(logoUrl),
                        //       fit: BoxFit.contain,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(role, style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                              Text(company, style: TextStyle(color: Colors.blueAccent, fontSize: 14.sp)),
                            ],
                          ),
                        ),
                        Icon(Icons.open_in_new, size: 18.sp, color: Colors.grey),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    _buildDurationBadge(duration),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDurationBadge(String duration) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(duration, style: TextStyle(color: Colors.blueAccent, fontSize: 12.sp, fontWeight: FontWeight.w600)),
    );
  }
}