import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';

class ContactPageHeaderView extends StatelessWidget {
  const ContactPageHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Lets get in touch',
          style: GoogleFonts.poppins(
            color: context.primaryColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
            fontSize: context.isDesktop ? 30 : 15,
          ),
        ),
        Text(
          'its as easy as email',
          style: GoogleFonts.poppins(
            color: context.primaryTextColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
            fontSize: context.isDesktop ? 30 : 15,
          ),
        ),
        AppDivider(desktopWidth: 400),
        const SizedBox(height: 16),
        SizedBox(
          width: 400,
          child: Text(
            "Let's collaborate and bring your ideas to life",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: context.descriptionColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
