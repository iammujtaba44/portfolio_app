import 'package:flutter/material.dart';
import 'package:portfolio_app/features/loading/pages/loading_screen.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/projects/presentation/pages/projects_page.dart';
import '../../features/skills/presentation/pages/skills_page.dart';
import '../../features/about/presentation/pages/about_page.dart';
import '../../features/contact/presentation/pages/contact_page.dart';

class AppRoutes {
  static const String loading = '/';
  static const String home = '/home';
  static const String projects = '/projects';
  static const String skills = '/skills';
  static const String about = '/about';
  static const String contact = '/contact';
  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomePage(),
    projects: (context) => const ProjectsPage(),
    skills: (context) => const SkillsPage(),
    about: (context) => const AboutPage(),
    contact: (context) => const ContactPage(),
    loading: (context) => const LoadingScreen(),
  };
}
