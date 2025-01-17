import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Connect with me',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _SocialButton(
                  icon: Icons.email,
                  label: 'Email',
                  onPressed: () => _launchUrl('mailto:your.email@example.com'),
                ),
                _SocialButton(
                  icon: Icons.link,
                  label: 'LinkedIn',
                  onPressed: () => _launchUrl('https://linkedin.com/in/yourusername'),
                ),
                _SocialButton(
                  icon: Icons.code,
                  label: 'GitHub',
                  onPressed: () => _launchUrl('https://github.com/yourusername'),
                ),
                _SocialButton(
                  icon: Icons.flutter_dash,
                  label: 'Twitter',
                  onPressed: () => _launchUrl('https://twitter.com/yourusername'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
      ),
    );
  }
}
