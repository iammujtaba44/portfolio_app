import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
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
    ProjectsPage(),
    // AboutPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(selectedPage: AppBarPage.Home),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomePage(),
            const TechStackPage(),
            const ProjectsPage(),
            // AboutPage(),
            const ContactPage(),
            const CommonFooterView()
          ],
        ),
      ),
    );
  }
}

class CommonFooterView extends StatelessWidget {
  const CommonFooterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: context.surfaceColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Design & Developed by ',
              style: GoogleFonts.poppins(fontSize: 18, color: context.descriptionColor)),
          Text('Muhammad Mujtaba',
              style: GoogleFonts.poppins(fontSize: 18, color: context.primaryColor)),
        ],
      ),
    );
  }
}
