import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/projects/domain/models/projects_model.dart';
import 'package:portfolio_app/features/projects/domain/project_enum.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: context.primaryColor,
                    blurRadius: 10,
                    spreadRadius: -5,
                    offset: const Offset(0, 0),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    spreadRadius: -5,
                    offset: const Offset(0, 8),
                  ),
                ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ProjectCardImageView(project: widget.project),
              _ProjectCardDetailView(project: widget.project),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectCardDetailView extends StatelessWidget {
  const _ProjectCardDetailView({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            style: GoogleFonts.urbanist(
              color: context.primaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            project.description ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.urbanist(
              color: context.descriptionColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: project.links
                .map(
                  (link) => AppChipWidget(
                    label: link.type.name,
                    icon: link.type.icon,
                    isDense: true,
                    color: context.primaryTextColor,
                    onTap: () => launchUrl(Uri.parse(link.url)),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ProjectCardImageView extends StatelessWidget {
  const _ProjectCardImageView({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            project.imageUrl,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
        if (project.category != null && project.category?.isNotEmpty == true)
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: context.primaryColorOnSurface,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                project.category ?? '',
                style: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: context.primaryTextColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
