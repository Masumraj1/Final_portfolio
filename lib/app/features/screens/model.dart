class Project {
  final String name;
  final String imageUrl;   // Asset বা online image
  final String playStoreLink;
  final String? appStoreLink; // Optional

  Project({
    required this.name,
    required this.imageUrl,
    required this.playStoreLink,
    this.appStoreLink,
  });
}


final List<Project> projects = [
  Project(
    name: "ANS Music",
    imageUrl: "https://picsum.photos/300/150?random=1",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.ansmusiclimited.ansmusic&pcampaignid=web_share",
  ),
  Project(
    name: "Next Doctor Booking App",
    imageUrl: "https://picsum.photos/300/150?random=1",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.medical.rebecca",
  ),
  Project(
    name: "CareNess",
    imageUrl: "https://picsum.photos/300/150?random=1",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.mmemmo.careness",
  ),
  Project(
    name: "NIFI Salon",
    imageUrl: "https://picsum.photos/300/150?random=1",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.nifi.olaa",
  ),
  Project(
    name: "Up A Level K9 Academy",
    imageUrl: "https://picsum.photos/300/150?random=1",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.karen.upalevelk9academy&hl=en",
    appStoreLink: "https://apps.apple.com/us/app/up-a-level-k9-academy/id6581483580",
  ),
  Project(
    name: "PROTIPPZ",
    imageUrl: "https://picsum.photos/300/150?random=1",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.coryrains.protppz",
  ),
];


class SocialLink {
  final String name;
  final String url;
  final String iconPath; // local asset or icon name

  SocialLink({required this.name, required this.url, required this.iconPath});
}

final List<SocialLink> socialLinks = [
  SocialLink(
    name: "GitHub",
    url: "https://picsum.photos/300/150?random=1",
    iconPath: "https://picsum.photos/300/150?random=1",
  ),
  SocialLink(
    name: "LinkedIn",
    url: "https://picsum.photos/300/150?random=1",
    iconPath: "https://picsum.photos/300/150?random=1",
  ),
  SocialLink(
    name: "Twitter",
    url: "https://picsum.photos/300/150?random=1",
    iconPath: "https://picsum.photos/300/150?random=1",
  ),
];
