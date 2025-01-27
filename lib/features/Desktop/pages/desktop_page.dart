import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/common_app_bar/common_app_bar.dart';
import 'package:portfolio_app/core/widgets/common_app_bar/common_app_bar_enum.dart';
import 'package:portfolio_app/features/contact/presentation/pages/contact_page.dart';
import 'package:portfolio_app/features/experience/presentation/pages/experiences_page.dart';
import 'package:portfolio_app/features/home/presentation/pages/home_page.dart';
import 'package:portfolio_app/features/projects/presentation/pages/projects_page.dart';
import 'package:portfolio_app/features/tech_stack/presentation/pages/tech_stack_page.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_app/features/Desktop/providers/scroll_controller_provider.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ScrollControllerProvider(),
      child: const _DesktopPageContent(),
    );
  }
}

class _DesktopPageContent extends StatelessWidget {
  const _DesktopPageContent();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ScrollControllerProvider>(context);

    return Scaffold(
      appBar: CommonAppBar(
        selectedPage: appBarPages[provider.selectedPageIndex],
        onPageSelected: provider.scrollToIndex,
        onGetInTouchPressed: () => provider.scrollToIndex(appBarPages.length - 1),
      ),
      body: SingleChildScrollView(
        controller: provider.scrollController,
        child: Column(
          children: [
            ...List.generate(5, (page) => _pages(provider.keys[page])[page]),
            const CommonFooterView()
          ],
        ),
      ),
    );
  }

  List<Widget> _pages(Key pageKey) => [
        HomePage(key: pageKey),
        TechStackPage(key: pageKey),
        ProjectsPage(key: pageKey),
        ExperiencesPage(key: pageKey),
        ContactPage(key: pageKey),
      ];
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
              style: GoogleFonts.poppins(
                  fontSize: context.isDesktop ? 18 : 12, color: context.descriptionColor)),
          Text('Muhammad Mujtaba',
              style: GoogleFonts.poppins(
                  fontSize: context.isDesktop ? 18 : 12, color: context.primaryColor)),
        ],
      ),
    );
  }
}
