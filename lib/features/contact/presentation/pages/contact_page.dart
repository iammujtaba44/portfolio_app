import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/contact/presentation/widgets/contact_page_calendar_card_view.dart';
import 'package:portfolio_app/features/contact/presentation/widgets/contact_page_contact_info_view.dart';
import 'package:portfolio_app/features/contact/presentation/widgets/contact_page_header_view.dart';
import 'package:portfolio_app/resources/resources.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: AppGradient.mixedGradient),
      child: context.isDesktop ? _ContactPageDesktopView() : _ContactPageMobileView(),
    );
  }
}

class _ContactPageDesktopView extends StatelessWidget {
  const _ContactPageDesktopView();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const WaterMarkView(watermark: 'Need A Quote?'),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactPageHeaderView(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ContactPageCalendarCardView(),
                  const SizedBox(width: 32),
                  const ContactPageContactInfoView(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _ContactPageMobileView extends StatelessWidget {
  const _ContactPageMobileView();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const WaterMarkView(watermark: 'Need A Quote?'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactPageHeaderView(),
              const ContactPageCalendarCardView(),
              const SizedBox(height: 32),
              const ContactPageContactInfoView()
            ],
          ),
        )
      ],
    );
  }
}
