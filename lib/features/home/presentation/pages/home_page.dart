import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/common_app_bar.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_content_view.dart';
import 'package:portfolio_app/features/home/presentation/widgets/navigation_drawer.dart';
import '../../../../core/widgets/responsive_wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(selectedPage: AppBarPage.Home),
      drawer: context.isMobile ? const HomeNavigationDrawer() : null,
      body: ResponsiveWrapper(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.isDesktop ? 48.0 : 24.0,
              vertical: context.isDesktop ? 64.0 : 32.0,
            ),
            child: HomeContentView(),
          ),
        ),
      ),
    );
  }
}
