import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';
import 'package:portfolio_app/features/tech_stack/presentation/widgets/tech_stack_category_item_widget.dart';

class TechStackCategoryWidget extends StatelessWidget {
  final TechStackCategoryModel model;

  const TechStackCategoryWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.categoryName,
          style: GoogleFonts.poppins(
            color: context.primaryColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: model.stacks
              .map((techStack) => TechStackCategoryItemWidget(techStack: techStack))
              .toList(),
        ),
      ],
    );
  }
}
