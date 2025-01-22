import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';

class HomeStatisticsSectionView extends StatelessWidget {
  const HomeStatisticsSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.isDesktop ? 40.0 : 20.0,
      ).copyWith(
        bottom: context.isDesktop ? 64.0 : 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: context.isDesktop ? 40 : 20,
        children: [
          _buildStatistic(context, '~6', 'Years of\nExperience'),
          _buildStatistic(context, '50+', 'Projects Completed\nin 10+ Countries'),
          _buildStatistic(context, '1.5K', 'Happy\nClients'),
        ],
      ),
    );
  }

  Widget _buildStatistic(BuildContext context, String value, String label) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: context.textTheme.displayLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: context.isDesktop ? 30 : 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 5),
        Text(
          label,
          style: context.textTheme.bodyLarge?.copyWith(
            fontSize: context.isDesktop ? 10 : 8,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.1,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
