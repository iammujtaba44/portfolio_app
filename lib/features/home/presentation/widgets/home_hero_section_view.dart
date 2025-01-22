import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/services/locator_service.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/home/presentation/providers/home_provider.dart';
import 'package:portfolio_app/features/projects/data/services/i_projects_service.dart';
import 'package:portfolio_app/resources/resources.dart';
import 'package:provider/provider.dart';

class HomeHeroSectionView extends StatelessWidget {
  const HomeHeroSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.isDesktop ? 48.0 : 24.0,
        vertical: context.isDesktop ? 64.0 : 50.0,
      ),
      decoration: BoxDecoration(gradient: AppGradient.blackGradient(context)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: _HomeHeroSectionDescriptionView()),
          const SizedBox(width: 48),
          const HomeHeroSectionImage(),
        ],
      ),
    );
  }
}

class _HomeHeroSectionDescriptionView extends StatelessWidget {
  const _HomeHeroSectionDescriptionView();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: context.isDesktop ? 5 : 16,
          ),
          child: AppGradient.shaderMask(
            child: Text(
              'Senior Mobile Engineer',
              style: GoogleFonts.urbanist(
                fontSize: context.isDesktop ? 20 : 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Muhammad ',
                style: GoogleFonts.urbanist(
                  fontSize: context.isDesktop ? 60 : 30,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 5,
                  color: context.primaryTextColor.withValues(alpha: 0.7),
                ),
              ),
              TextSpan(
                text: '\nMujtaba',
                style: GoogleFonts.urbanist(
                  fontSize: context.isDesktop ? 60 : 30,
                  color: context.primaryTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'I break down complex user experience problems to create integrity focused solutions that connect billions of people',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: context.isDesktop ? 25 : 10,
              ),
        ),
        const SizedBox(height: 32),
        _HomeHeroSectionSocialButtonView(),
      ],
    );
  }
}

class _HomeHeroSectionSocialButtonView extends StatelessWidget {
  const _HomeHeroSectionSocialButtonView();

  @override
  Widget build(BuildContext context) {
    final socialAccounts = context.watch<HomeProvider>().socialAccounts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            ...socialAccounts.map(
              (e) => SocialButton(
                onPressed: () {},
                image: e.image,
              ),
            ),
          ],
        ),
        SocialButton(
          onPressed: () {
            locator.get<IProjectsService>().fetchProjects();
            // locator.get<IDatabaseService>().setData('projects', {
            //   'projects': [
            //     {
            //       'title': 'Eyewa',
            //       'description':
            //           'Eyewa is a platform that allows you to buy and sell glasses online.',
            //       'imageUrl': 'assets/images/eyewa.png',
            //       'links': [
            //         {
            //           'type': 'web',
            //           'url': 'https://eyewa.com',
            //         },
            //         {
            //           'type': 'play',
            //           'url': 'https://play.google.com/store/apps/details?id=com.eyewa.app&hl=en',
            //         },
            //         {
            //           'type': 'app',
            //           'url':
            //               'https://apps.apple.com/us/app/eyewa-eyewear-shopping-app/id1463605579',
            //         },
            //       ],
            //     },
            //   ],
            // });
          },
          label: 'Download CV',
          icon: Icons.download,
          isPrimary: true,
        ),
        GradientButton(
          text: 'GET IN TOUCH',
          onPressed: () {},
          padding: EdgeInsets.symmetric(
            horizontal: context.isDesktop ? 32 : 24,
            vertical: context.isDesktop ? 16 : 12,
          ),
        ),
      ],
    );
  }
}

class HomeHeroSectionImage extends StatelessWidget {
  const HomeHeroSectionImage({super.key, this.isPositioned = false});
  final bool isPositioned;

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop && !isPositioned) {
      return Expanded(
        flex: 2,
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: const DecorationImage(
              image: AssetImage('assets/profile/profile_main.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      );
    } else {
      if (isPositioned && !context.isDesktop) {
        return Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset('assets/profile/profile_main.png', height: 200),
        );
      }
      return const SizedBox.shrink();
    }
  }
}
