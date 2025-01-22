import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        const SocialLinksWidget(),
        SocialButton(
          onPressed: () {
            // locator.get<IProjectsService>().fetchProjects();
            locator.get<IDatabaseService>().updateData('projects', {
              'projects': [
                {
                  'title': 'Eyewa',
                  'description':
                      'Eyewa is a platform that allows you to buy and sell glasses online.',
                  'imageUrl': 'https://i.postimg.cc/bNNQFdbx/eyewacover.png',
                  'category': 'Product',
                  'company': 'Eyewa',
                  'links': [
                    {
                      'type': 'app',
                      'url':
                          'https://apps.apple.com/us/app/eyewa-eyewear-shopping-app/id1463605579',
                    },
                    {
                      'type': 'play',
                      'url': 'https://play.google.com/store/apps/details?id=com.eyewa.app&hl=en',
                    },
                    {
                      'type': 'web',
                      'url': 'https://eyewa.com',
                    },
                  ],
                },
                {
                  'title': 'Optical Club',
                  'description':
                      'The Optical Club is a multi-brand eyewear destination in the Gulf region.',
                  'imageUrl': 'https://i.postimg.cc/6qQjffjj/Untitled-design-1.png',
                  'category': 'Product',
                  'company': 'Optical Club - Eyewa',
                  'links': [
                    {
                      'type': 'app',
                      'url': 'https://apps.apple.com/de/app/optical-club/id6740026550',
                    },
                    {
                      'type': 'play',
                      'url': 'https://play.google.com/store/apps/details?id=com.eyewa.app&hl=en',
                    },
                    {
                      'type': 'web',
                      'url': 'https://theopticalclub.com/saopcl-ar',
                    },
                  ],
                },
                {
                  'title': 'Persib',
                  'description':
                      'A variety of the latest information about Persib, match schedules, live broadcasts, profiles, statistics from the Blue Princes and others. Also get the convenience and privileges of PERSIB Membership just by completing your data in the Profile menu.',
                  'imageUrl': 'https://i.postimg.cc/zfZvV2MS/persib.png',
                  'category': 'Product',
                  'company': 'Supertal',
                  'links': [
                    {
                      'type': 'app',
                      'url': 'https://apps.apple.com/us/app/persib/id1240095475?platform=iphone',
                    },
                    {
                      'type': 'play',
                      'url':
                          'https://play.google.com/store/apps/details?id=com.persib.persibpass&hl=en',
                    },
                    {
                      'type': 'web',
                      'url': 'https://persib.co.id/',
                    },
                  ],
                },
                {
                  'title': 'Reku - Beli Kripto & Saham AS',
                  'description':
                      'Trading Bitcoin (BTC), crypto coins, and investing in American stocks is made easier in just one app',
                  'imageUrl': 'https://i.postimg.cc/HsXDzK5c/Untitled-design.png',
                  'category': 'Product',
                  'company': 'Supertal',
                  'links': [
                    {
                      'type': 'play',
                      'url': 'https://play.google.com/store/apps/details?id=com.rekeningku&hl=en',
                    },
                    {
                      'type': 'web',
                      'url': 'https://reku.id/en',
                    },
                  ],
                },
                {
                  'title': 'Lightbridge Life: Communities',
                  'description':
                      'Lightbridge is facilitators of connection and champions of community!',
                  'company': 'Walturn',
                  'imageUrl': 'https://i.postimg.cc/FHh07RLH/lightbridge.png',
                  'category': 'Product',
                  'links': [
                    {
                      'type': 'play',
                      'url':
                          'https://play.google.com/store/apps/details?id=ventures.verygood.flutter.light_bridge&hl=en',
                    },
                  ],
                },
                {
                  'title': 'Spawn Camp',
                  'description':
                      'Spawn Camp is a platform that allows Private, 1-on-1 lessons with the expert instructor of your choice. it connect you with top gamers who will help you improve your game while having fun at the same time',
                  'company': 'Client',
                  'imageUrl': 'https://i.postimg.cc/TPK8vTQt/spawncamp.png',
                  'category': 'Product',
                  'links': [
                    {
                      'type': 'app',
                      'url': 'https://spawncamp.org/dashboard',
                    },
                    {
                      'type': 'web',
                      'url': 'https://spawncamp.org/dashboard',
                    },
                    {
                      'type': 'web',
                      'url': 'https://spawncamp.org/dashboard',
                    },
                  ],
                },
              ],
            });
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
