// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/resources/resources.dart';

enum AppBarPage {
  Home,
  Services,
  Projects,
  Testimonials;

  String get title => name;
}

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarPage selectedPage;

  const CommonAppBar({super.key, required this.selectedPage});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: context.isMobile
          ? RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Mujtaba", style: context.displaySmall),
                  TextSpan(text: '.com', style: context.bodyLarge),
                ],
              ),
            )
          : null,
      actions: [
        if (context.isDesktop) const SizedBox(width: 20),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: context.isDesktop
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Mujtaba",
                              style: GoogleFonts.pacifico(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                          TextSpan(
                              text: '.com',
                              style: GoogleFonts.pacifico(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    _buildNavButton(context, 'Home'),
                    _buildNavButton(context, 'Services'),
                    _buildNavButton(context, 'Projects'),
                    _buildNavButton(context, 'Testimonials'),
                    Spacer(),
                    GradientButton(
                      text: "LET'S TALK",
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String text) {
    final bool isSelected = selectedPage.title == text;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border(
          bottom: BorderSide(
            color: isSelected ? Colors.orange[200]! : Colors.transparent,
            width: 1,
          ),
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        onPressed: isSelected ? null : () => Navigator.pushNamed(context, '/${text.toLowerCase()}'),
        child: Text(
          text,
          style: isSelected ? context.titleLargeWithWhiteAndBold : context.titleLarge,
        ),
      ),
    );
  }
}
