import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/projects/presentation/providers/projects_provider.dart';
import 'package:portfolio_app/features/projects/presentation/widgets/project_card.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/launch_url.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProjectsProvider>().fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.surfaceColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.isDesktop ? 120 : 24,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment:
                context.isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              const PageHeaderTextWidget(
                title: 'Projects',
                description:
                    'Here are some of the projects I have worked on, I have worked on a lot of projects but these are the ones I am proud of.',
              ),
              const _ProjectsView(),
              Center(
                child: TextButton(
                  onPressed: () =>
                      Launcher.launch('https://github.com/iammujtaba44?tab=repositories'),
                  child: Text(
                    'See More',
                    style: GoogleFonts.poppins(
                      color: context.primaryColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectsView extends StatelessWidget {
  const _ProjectsView();

  @override
  Widget build(BuildContext context) {
    final projects = context.watch<ProjectsProvider>().projects;

    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: projects.map((project) => ProjectCard(project: project)).toList(growable: false),
      ),
    );
  }
}
