import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';

class ExperiencePageItemDescriptiveView extends StatelessWidget {
  const ExperiencePageItemDescriptiveView({
    super.key,
    required this.technologies,
    required this.title,
  });

  final List<String> technologies;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.urbanist(
            fontSize: context.isDesktop ? 16 : 10,
            fontWeight: FontWeight.w600,
            color: context.primaryTextColor,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: technologies.length,
          itemBuilder: (context, index) =>
              _ExperiencePageItemViewDottedWidget(title: technologies[index]),
        )
      ],
    );
  }
}

class _ExperiencePageItemViewDottedWidget extends StatelessWidget {
  const _ExperiencePageItemViewDottedWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(Icons.circle, size: 10, color: context.primaryColor),
          const SizedBox(width: 4),
          Expanded(child: _buildDescription(context)),
        ],
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.urbanist(
        fontSize: context.isDesktop ? 16 : 12,
        fontWeight: FontWeight.w400,
        color: context.secondaryColor,
      ),
    );
  }
}
