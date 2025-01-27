import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_hero_section_description_view.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_hero_section_image_view.dart';

class HomeHeroSectionView extends StatelessWidget {
  const HomeHeroSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: context.isDesktop ? 120.0 : 50.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: const HomeHeroSectionDescriptionView()),
          const SizedBox(width: 10),
          const HomeHeroSectionImageView(),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
