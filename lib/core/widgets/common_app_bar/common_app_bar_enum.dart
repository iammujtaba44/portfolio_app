enum AppBarPage {
  home,
  techStack,
  projects,
  contactMe;
}

extension AppBarPageExtension on AppBarPage {
  String get title => switch (this) {
        AppBarPage.home => 'Home',
        AppBarPage.techStack => 'Tech Stack',
        AppBarPage.projects => 'Projects',
        AppBarPage.contactMe => 'Contact Me',
      };
}

final List<AppBarPage> appBarPages = const [
  AppBarPage.home,
  AppBarPage.techStack,
  AppBarPage.projects,
  AppBarPage.contactMe,
];
