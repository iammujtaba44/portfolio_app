import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';

class TechStackCategoryItemWidget extends StatefulWidget {
  const TechStackCategoryItemWidget({
    super.key,
    required this.techStack,
  });

  final TechStackModel techStack;

  @override
  State<TechStackCategoryItemWidget> createState() => _TechStackCategoryItemWidgetState();
}

class _TechStackCategoryItemWidgetState extends State<TechStackCategoryItemWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/${widget.techStack.iconPath}',
                  width: 30,
                  height: 30,
                  color: context.primaryTextColor,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 80,
                  child: Text(
                    widget.techStack.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                      color: context.secondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
