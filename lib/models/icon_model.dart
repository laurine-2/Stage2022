class IconModel {
  String icon;
  String title;

  IconModel({
    required this.icon,
    required this.title,
  });

  static List<IconModel> icons = [
    IconModel(
      icon: "assets/icons/iconDiscover.png",
      title: "Discover",
    ),
    IconModel(
      icon: "assets/icons/iconLocalisation.png",
      title: "Arbitrary",
    ),
    IconModel(
      icon: "assets/icons/iconAuthor.png",
      title: "Author Nearby",
    ),
    IconModel(
      icon: "assets/icons/iconGlobe.png",
      title: "worlwide",
    ),
    IconModel(
      icon: "assets/icons/icon1.png",
      title: "Audio book",
    ),
    IconModel(
      icon: "assets/icons/iconGlobe.png",
      title: "Quit search",
    ),
    IconModel(
      icon: "assets/icons/icon1.png",
      title: "My country",
    ),
  ];
}
