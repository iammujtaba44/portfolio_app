import 'package:flutter/material.dart';
import 'package:portfolio_app/features/Desktop/pages/desktop_page.dart';
import 'package:portfolio_app/features/loading/pages/loading_screen.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/projects/presentation/pages/projects_page.dart';
import '../../features/tech_stack/presentation/pages/tech_stack_page.dart';
import '../../features/about/presentation/pages/about_page.dart';
import '../../features/contact/presentation/pages/contact_page.dart';

class AppRoutes {
  // Base routes
  static const String loading = '/';
  static const String desktop = '/desktop';

  // Nested routes under desktop
  static const String home = '/home';
  static const String projects = '/projects';
  static const String techStack = '/techStack';
  static const String about = '/about';
  static const String contact = '/contact';

  static final Map<String, Widget Function(BuildContext)> routes = {
    loading: (_) => const LoadingScreen(),
    desktop: (_) => DesktopPage(),
    home: (_) => const HomePage(),
    projects: (_) => const ProjectsPage(),
    techStack: (_) => const TechStackPage(),
    about: (_) => const AboutPage(),
    contact: (_) => const ContactPage(),
  };
}
