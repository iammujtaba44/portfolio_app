import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/experience/domain/models/experience.dart';
import 'package:portfolio_app/features/experience/presentation/widgets/experience_page_item_descriptive_view.dart';

class ExperiencePageItemView extends StatelessWidget {
  const ExperiencePageItemView({
    super.key,
    required this.experience,
  });

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 15,
          spreadRadius: 2,
          offset: const Offset(0, 8),
        ),
      ]),
      child: Card(
        margin: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${experience.company} | ',
                      style: GoogleFonts.urbanist(
                        color: context.primaryTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: experience.country,
                      style: GoogleFonts.urbanist(
                        color: context.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                experience.position,
                style: GoogleFonts.urbanist(
                  color: context.secondaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                experience.duration,
                style: GoogleFonts.urbanist(
                  color: context.secondaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 12),
              AppDivider(
                color: context.secondaryColor,
                thickness: 1,
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExperiencePageItemDescriptiveView(
                        technologies: experience.technologies, title: 'Technologies'),
                  ),
                  Expanded(
                    flex: 2,
                    child: ExperiencePageItemDescriptiveView(
                        technologies: experience.description, title: 'Description'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
