import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildEducationItem(
            context,
            institution: 'University Name',
            degree: 'Your Degree',
            duration: '2016 - 2020',
            description: 'Additional details about your education, achievements, etc.',
          ),
          // Add more education items as needed
        ],
      ),
    );
  }

  Widget _buildEducationItem(
    BuildContext context, {
    required String institution,
    required String degree,
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
              institution,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Text(
              degree,
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
