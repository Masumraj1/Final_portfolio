import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../providers/scroll_controller_provider.dart';

class FooterSection extends ConsumerWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(scrollControllerProvider);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white.withOpacity(0.05)),
        ),
      ),
      child: Column(
        children: [
          // Social Links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(Icons.link, "LinkedIn"),
              _socialIcon(Icons.code, "GitHub"),
              _socialIcon(Icons.facebook, "Facebook"),
            ],
          ),
          SizedBox(height: 20.h),

          // Copyright Text
          Text(
            "© 2026 Md. Masum Rana. All Rights Reserved.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 10.h),

          // "Back to Top" functionality using Riverpod
          TextButton.icon(
            onPressed: () {
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            icon: Icon(Icons.arrow_upward, size: 16.sp, color: Colors.blueAccent),
            label: Text(
              "Back to Top",
              style: TextStyle(color: Colors.blueAccent, fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon, String tooltip) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: IconButton(
        onPressed: () {},
        tooltip: tooltip,
        icon: Icon(icon, color: Colors.grey, size: 24.sp),
        hoverColor: Colors.blueAccent.withOpacity(0.1),
      ),
    );
  }
}