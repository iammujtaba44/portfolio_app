import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/features/projects/domain/models/projects_model.dart';
import 'package:portfolio_app/features/projects/domain/project_enum.dart';
import 'package:portfolio_app/features/projects/presentation/providers/projects_provider.dart';
import 'package:portfolio_app/features/projects/presentation/widgets/project_card.dart';
import 'package:provider/provider.dart';

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
    final projects = context.watch<ProjectsProvider>().projects;
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.isDesktop ? 120 : 24,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ...projects.map((project) => ProjectCard(
                        title: project.title,
                        category: 'Product',
                        imageUrl: project.imageUrl,
                        links: project.links,
                        hasGlow: true,
                      )),
                  // ProjectCard(
                  //   title: 'The Holy Qur\'an',
                  //   category: 'Open Source',
                  //   imageUrl: 'assets/images/quran_app.png',
                  //   links: [
                  //     ProjectLink(type: LinkType.play),
                  //     ProjectLink(type: LinkType.web),
                  //     ProjectLink(type: LinkType.github),
                  //   ],
                  // ),
                  // ProjectCard(
                  //   title: 'Devfolio',
                  //   category: 'Open Source',
                  //   imageUrl: 'assets/images/devfolio.png',
                  //   links: [
                  //     ProjectLink(type: LinkType.play),
                  //     ProjectLink(type: LinkType.web),
                  //     ProjectLink(type: LinkType.github),
                  //     ProjectLink(type: LinkType.app),
                  //   ],
                  // ),
                ],
              ),
              // GridView.count(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   crossAxisCount: 3,
              //   mainAxisSpacing: 16,
              //   crossAxisSpacing: 16,
              //   childAspectRatio: 1.2,
              //   children: const [
              //     ProjectCard(
              //       title: 'The Holy Qur\'an',
              //       category: 'Open Source',
              //       imageUrl: 'assets/images/quran_app.png',
              //       links: [
              //         ProjectLink(type: LinkType.play),
              //         ProjectLink(type: LinkType.web),
              //         ProjectLink(type: LinkType.github),
              //       ],
              //     ),
              //     ProjectCard(
              //       title: 'Devfolio',
              //       category: 'Open Source',
              //       imageUrl: 'assets/images/devfolio.png',
              //       links: [
              //         ProjectLink(type: LinkType.play),
              //         ProjectLink(type: LinkType.web),
              //         ProjectLink(type: LinkType.github),
              //         ProjectLink(type: LinkType.app),
              //       ],
              //     ),
              //     // Add more projects...
              //   ],
              // ),

              const SizedBox(height: 24),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle See More action
                  },
                  child: const Text(
                    'See More',
                    style: TextStyle(color: Colors.green),
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
