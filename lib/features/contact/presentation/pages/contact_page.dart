import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/contact/presentation/widgets/contact_page_calendar_card_view.dart';
import 'package:portfolio_app/features/contact/presentation/widgets/contact_page_contact_info_view.dart';
import 'package:portfolio_app/resources/resources.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: AppGradient.blackGradient(context)),
      child: context.isDesktop ? _ContactPageDesktopView() : _ContactPageMobileView(),
    );
  }
}

class _ContactPageDesktopView extends StatelessWidget {
  const _ContactPageDesktopView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const PageHeaderTextWidget(
            title: 'Get in',
            highlightTitle: 'touch',
            description: "Let's collaborate and bring your ideas to life",
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
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
    );
  }
}

class _ContactPageMobileView extends StatelessWidget {
  const _ContactPageMobileView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const PageHeaderTextWidget(
            title: 'Get in touch',
            description: "Let's collaborate and bring your ideas to life",
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          const ContactPageCalendarCardView(),
          const SizedBox(height: 32),
          const ContactPageContactInfoView()
        ],
      ),
    );
  }
}
