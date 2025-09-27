import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/model.dart';


class SocialIcons extends StatelessWidget {
  final List<SocialLink> links;

  const SocialIcons({super.key, required this.links});

  void _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: links.map((link) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            onTap: () => _launchURL(link.url),
            child:   MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image.network(link.iconPath, width: 32, height: 32),
            ),
          ),


        );
      }).toList(),
    );
  }
}
