import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_hero_section_view.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_statistics_section_view.dart';
import 'package:portfolio_app/resources/resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _tweenAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _tweenAnimation = Tween<double>(begin: -10.0, end: 10.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppGradient.blackGradient(context)),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        padding: EdgeInsets.symmetric(
          horizontal: context.isDesktop ? 120 : 24,
          vertical: 0,
        ).copyWith(top: context.isDesktop ? 100 : 30),
        children: [
          Stack(
            children: [
              _buildHiAnimation(),
              const HomeHeroSectionView(),
              const HomeHeroSectionImage(isPositioned: true),
              Positioned(
                bottom: 0,
                child: const HomeStatisticsSectionView(),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHiAnimation() {
    return Positioned.fill(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _tweenAnimation.value),
            child: Center(
              child: Text(
                'HI, Forks!',
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: context.isDesktop ? 200 : 80,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
