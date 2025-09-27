import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/app_constants/app_colors.dart';

class ProjectCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String playStoreLink;
  final String? appStoreLink;

  const ProjectCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.playStoreLink,
    this.appStoreLink,
  });

  void _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        children: [
          Image.network(imageUrl,height: 150,fit: BoxFit.cover,),
          // Image.asset(imageUrl, height: 150, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Text(name,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _launchURL(playStoreLink),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accent,
                ),
                child: const Text("Play Store", style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(width: 8),
              if (appStoreLink != null)
                ElevatedButton(
                  onPressed: () => _launchURL(appStoreLink!),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                  ),
                  child: const Text("App Store", style: TextStyle(color: Colors.black)),
                ),
            ],
          )
        ],
      ),
    );
  }
}
