import 'package:flutter/material.dart';
import '../../../../core/widgets/responsive_wrapper.dart';
import '../widgets/contact_form.dart';
import '../widgets/social_links.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: ResponsiveWrapper(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get in Touch',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              Text(
                'Feel free to reach out for collaborations or just a friendly hello',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 32),
              const ContactForm(),
              const SizedBox(height: 48),
              const SocialLinks(),
            ],
          ),
        ),
      ),
    );
  }
}
