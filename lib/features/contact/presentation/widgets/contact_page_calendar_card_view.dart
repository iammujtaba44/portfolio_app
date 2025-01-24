import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/utils/date_parser.dart';
import 'package:portfolio_app/core/utils/launch_url.dart';
import 'package:portfolio_app/resources/resources.dart';

class ContactPageCalendarCardView extends StatelessWidget {
  const ContactPageCalendarCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surfaceColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.surfaceColor,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: context.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              DateParser.month,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: context.primaryTextColor,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            DateParser.day,
            style: GoogleFonts.poppins(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: context.primaryTextColor,
            ),
          ),
          Text(
            DateParser.weekday,
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: context.primaryTextColor,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => Launcher.launchCalendar('https://calendly.com/i-mmujtaba96/meet'),
            icon: Icon(
              Icons.videocam_outlined,
              color: context.primaryTextColor,
              size: 20,
            ),
            label: Text(
              'Book a 30 mins session',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: context.primaryTextColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: context.primaryColor,
              foregroundColor: context.primaryTextColor,
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
