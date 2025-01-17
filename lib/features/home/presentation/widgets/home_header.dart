import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 50,
            // TODO: Replace with your profile image
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          const SizedBox(height: 24),
          Text(
            'Hello, I\'m [Your Name]',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Text(
            'Software Developer',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'I create elegant solutions to complex problems using modern technologies. '
            'Passionate about building high-quality software that makes a difference.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            children: [
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement download resume functionality
                },
                child: const Text('Download Resume'),
              ),
              OutlinedButton(
                onPressed: () {
                  // TODO: Implement view projects functionality
                },
                child: const Text('View Projects'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
