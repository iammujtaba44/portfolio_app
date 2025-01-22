import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/utils/launch_url.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/contact/presentation/widgets/contact_button.dart';

class ContactPageContactInfoView extends StatelessWidget {
  const ContactPageContactInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactButton(
          icon: Icons.email_outlined,
          text: 'i.mmujtaba96@gmail.com',
          onTap: () => Launcher.launchEmail('i.mmujtaba96@gmail.com'),
        ),
        const SizedBox(height: 16),
        ContactButton(
          icon: Icons.phone_outlined,
          text: '+92 333 7257968',
          onTap: () => Launcher.launchPhone('+923337257968'),
        ),
        const SizedBox(height: 48),
        Container(
          width: 300,
          height: 1,
          color: context.descriptionColor.withOpacity(0.2),
        ),
        const SizedBox(height: 10),
        const SocialLinksWidget(),
      ],
    );
  }
}
