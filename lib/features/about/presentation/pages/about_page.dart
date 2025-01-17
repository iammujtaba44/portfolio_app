import 'package:flutter/material.dart';
import '../../../../core/widgets/responsive_wrapper.dart';
import '../widgets/about_header.dart';
import '../widgets/experience_timeline.dart';
import '../widgets/education_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: ResponsiveWrapper(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AboutHeader(),
              const SizedBox(height: 32),
              Text(
                'Experience',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const ExperienceTimeline(),
              const SizedBox(height: 32),
              Text(
                'Education',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const EducationSection(),
            ],
          ),
        ),
      ),
    );
  }
}
