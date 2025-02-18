import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/models/app_configs.dart';
import 'package:portfolio_app/core/providers/app_config_provider.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/projects/presentation/providers/projects_provider.dart';
import 'package:portfolio_app/features/projects/presentation/widgets/project_card.dart';
import 'package:portfolio_app/features/projects/presentation/widgets/project_see_more_view.dart';
import 'package:portfolio_app/resources/resources.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProjectsProvider>().fetchProjects();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appConfigs = context.watch<AppConfigProvider>().appConfigs;
    return Container(
      decoration: BoxDecoration(gradient: AppGradient.blackGradient(context)),
      child: Stack(
        children: [
          WaterMarkView(watermark: 'P\nR\nO\nJ\nE\nC\nT\nS'),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.isDesktop ? 120 : 24,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment:
                    context.isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                children: [
                  PageHeaderTextWidget(
                    title: 'What I have',
                    highlightTitle: 'Done!',
                    description: appConfigs?.projectsDescription ?? '',
                  ),
                  const _ProjectsView(),
                  ProjectsSeeMoreView(appConfigs: appConfigs),
                ],
              ),
            ),
          ),
        ],
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
