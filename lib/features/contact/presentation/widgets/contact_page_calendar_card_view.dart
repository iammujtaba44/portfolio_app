import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/utils/date_parser.dart';
import 'package:portfolio_app/core/utils/launch_url.dart';

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
                color: context.reversePrimaryTextColor,
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
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () =>
                Launcher.launchCalendar('https://calendly.com/i-mmujtaba96/let-s-talk-tech'),
            icon: const Icon(Icons.videocam_outlined),
            label: Text(
              'Book a 45 mins session',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: context.reversePrimaryTextColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: context.primaryColor,
              foregroundColor: Colors.black,
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
