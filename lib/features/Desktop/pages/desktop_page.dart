import 'package:flutter/material.dart';
import 'package:portfolio_app/core/widgets/common_app_bar.dart';
import 'package:portfolio_app/features/about/presentation/pages/about_page.dart';
import 'package:portfolio_app/features/contact/presentation/pages/contact_page.dart';
import 'package:portfolio_app/features/home/presentation/pages/home_page.dart';
import 'package:portfolio_app/features/projects/presentation/pages/projects_page.dart';
import 'package:portfolio_app/features/tech_stack/presentation/pages/tech_stack_page.dart';

// ignore: must_be_immutable
class DesktopPage extends StatelessWidget {
  DesktopPage({super.key});

  // final PageController _pageController = PageController(
  //   initialPage: 0,
  //   keepPage: true,
  //   viewportFraction: 1.0,
  // );

  List<Widget> pages = [
    HomePage(),
    TechStackPage(),
    AboutPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(selectedPage: AppBarPage.Home),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePage(),
            TechStackPage(),
            ProjectsPage(),
            AboutPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
