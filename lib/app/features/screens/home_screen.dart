import 'package:flutter/material.dart';
import '../../core/app_constants/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/project_card.dart';
import '../widgets/social_icon.dart';
import 'model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Intro Section
              const SizedBox(height: 32),
              const Text(
                "Hi, I'm Masum Rana",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                "Flutter Developer | UI/UX Enthusiast | Tech Lover",
                style: TextStyle(fontSize: 20, color: AppColors.textSecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text: "My Projects", onPressed: () {}),
                  const SizedBox(width: 16),
                  CustomButton(text: "Contact Me", onPressed: () {}),
                ],
              ),
              const SizedBox(height: 48),

              // Projects Section
              const Text(
                "Projects",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: projects
                    .map((proj) => ProjectCard(
                  name: proj.name,
                  imageUrl: proj.imageUrl,
                  playStoreLink: proj.playStoreLink,
                  appStoreLink: proj.appStoreLink,
                ))
                    .toList(),
              )
              ,

              const SizedBox(height: 48),

              // Contact Section
              const Text(
                "Contact Me",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary),
              ),
              const SizedBox(height: 48),
              const Text(
                "Connect with me",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 16),
              SocialIcons(links: socialLinks),
              const SizedBox(height: 24),
              const SizedBox(height: 24),
              const Text(
                "Email: masum@example.com\nPhone: +880123456789",
                style: TextStyle(fontSize: 18, color: AppColors.textSecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
