import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/models/app_configs.dart';
import 'package:portfolio_app/core/utils/launch_url.dart';

class ProjectsSeeMoreView extends StatelessWidget {
  const ProjectsSeeMoreView({super.key, required this.appConfigs});

  final AppConfigs? appConfigs;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => Launcher.launch(appConfigs?.repositoriesUrl ?? ''),
        child: Text(
          'See More',
          style: GoogleFonts.poppins(
            color: context.primaryColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
