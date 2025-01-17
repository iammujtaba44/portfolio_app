import 'package:flutter/material.dart';

class ExperienceTimeline extends StatelessWidget {
  const ExperienceTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildExperienceItem(
            context,
            company: 'Company Name',
            role: 'Your Role',
            duration: '2020 - Present',
            description: 'Description of your responsibilities and achievements.',
          ),
          // Add more experience items as needed
        ],
      ),
    );
  }

  Widget _buildExperienceItem(
    BuildContext context, {
    required String company,
    required String role,
    required String duration,
    required String description,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              company,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Text(
              role,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              duration,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
