import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/providers/app_config_provider.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/resources/resources.dart';
import 'package:provider/provider.dart';

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
          Expanded(flex: 3, child: _HomeHeroSectionDescriptionView()),
          const SizedBox(width: 10),
          const HomeHeroSectionImage(),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}

class _HomeHeroSectionDescriptionView extends StatelessWidget {
  const _HomeHeroSectionDescriptionView();

  @override
  Widget build(BuildContext context) {
    final appConfigs = context.watch<AppConfigProvider>().appConfigs;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: AppGradient.shaderMask(
            color: AppGradient.tealGradient,
            child: Text(
              appConfigs?.title?.toUpperCase() ?? '',
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
                  fontSize: context.isDesktop ? 100 : 30,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 5,
                  color: context.primaryTextColor,
                ),
              ),
              TextSpan(
                text: '\nMujtaba',
                style: GoogleFonts.urbanist(
                  fontSize: context.isDesktop ? 100 : 30,
                  color: context.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const AppDivider(),
        const SizedBox(height: 10),
        SizedBox(
          width: context.isDesktop ? 600 : 200,
          child: Text(
            appConfigs?.about ?? '',
            maxLines: 4,
            style: GoogleFonts.urbanist(
              fontSize: context.isDesktop ? 15 : 10,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: context.primaryTextColor,
            ),
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

            // locator.get<IDatabaseService>().updateData('appConfigs', {
            //   'email': 'mujtaba.dev@gmail.com',
            //   'phone': '+6281234567890',
            // });
            // locator.get<IDatabaseService>().updateData('projects', {
            //   'projects': [
            //     {
            //       'title': 'Eyewa',
            //       'description':
            //           'Eyewa is a platform that allows you to buy and sell glasses online.',
            //       'imageUrl': 'https://i.postimg.cc/bNNQFdbx/eyewacover.png',
            //       'category': 'Product',
            //       'company': 'Eyewa',
            //       'links': [
            //         {
            //           'type': 'app',
            //           'url':
            //               'https://apps.apple.com/us/app/eyewa-eyewear-shopping-app/id1463605579',
            //         },
            //         {
            //           'type': 'play',
            //           'url': 'https://play.google.com/store/apps/details?id=com.eyewa.app&hl=en',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://eyewa.com',
            //         },
            //       ],
            //     },
            //     {
            //       'title': 'Optical Club',
            //       'description':
            //           'The Optical Club is a multi-brand eyewear destination in the Gulf region.',
            //       'imageUrl': 'https://i.postimg.cc/6qQjffjj/Untitled-design-1.png',
            //       'category': 'Product',
            //       'company': 'Optical Club - Eyewa',
            //       'links': [
            //         {
            //           'type': 'app',
            //           'url': 'https://apps.apple.com/de/app/optical-club/id6740026550',
            //         },
            //         {
            //           'type': 'play',
            //           'url': 'https://play.google.com/store/apps/details?id=com.eyewa.app&hl=en',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://theopticalclub.com/saopcl-ar',
            //         },
            //       ],
            //     },
            //     {
            //       'title': 'Persib',
            //       'description':
            //           'A variety of the latest information about Persib, match schedules, live broadcasts, profiles, statistics from the Blue Princes and others. Also get the convenience and privileges of PERSIB Membership just by completing your data in the Profile menu.',
            //       'imageUrl': 'https://i.postimg.cc/zfZvV2MS/persib.png',
            //       'category': 'Product',
            //       'company': 'Supertal',
            //       'links': [
            //         {
            //           'type': 'app',
            //           'url': 'https://apps.apple.com/us/app/persib/id1240095475?platform=iphone',
            //         },
            //         {
            //           'type': 'play',
            //           'url':
            //               'https://play.google.com/store/apps/details?id=com.persib.persibpass&hl=en',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://persib.co.id/',
            //         },
            //       ],
            //     },
            //     {
            //       'title': 'Reku - Beli Kripto & Saham AS',
            //       'description':
            //           'Trading Bitcoin (BTC), crypto coins, and investing in American stocks is made easier in just one app',
            //       'imageUrl': 'https://i.postimg.cc/HsXDzK5c/Untitled-design.png',
            //       'category': 'Product',
            //       'company': 'Supertal',
            //       'links': [
            //         {
            //           'type': 'play',
            //           'url': 'https://play.google.com/store/apps/details?id=com.rekeningku&hl=en',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://reku.id/en',
            //         },
            //       ],
            //     },
            //     {
            //       'title': 'Lightbridge Life: Communities',
            //       'description':
            //           'Lightbridge is facilitators of connection and champions of community!',
            //       'company': 'Walturn',
            //       'imageUrl': 'https://i.postimg.cc/FHh07RLH/lightbridge.png',
            //       'category': 'Product',
            //       'links': [
            //         {
            //           'type': 'play',
            //           'url':
            //               'https://play.google.com/store/apps/details?id=ventures.verygood.flutter.light_bridge&hl=en',
            //         },
            //       ],
            //     },
            //     {
            //       'title': 'Spawn Camp',
            //       'description':
            //           'Spawn Camp is a platform that allows Private, 1-on-1 lessons with the expert instructor of your choice. it connect you with top gamers who will help you improve your game while having fun at the same time',
            //       'company': 'Client',
            //       'imageUrl': 'https://i.postimg.cc/TPK8vTQt/spawncamp.png',
            //       'category': 'Product',
            //       'links': [
            //         {
            //           'type': 'app',
            //           'url': 'https://spawncamp.org/dashboard',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://spawncamp.org/dashboard',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://spawncamp.org/dashboard',
            //         },
            //       ],
            //     },
            //     {
            //       'title': 'Mujtaba.dev (Portfolio app)',
            //       'description':
            //           'This is my portfolio app, it is a app that allows you to view my projects and contact me',
            //       'company': 'Self',
            //       'imageUrl': 'https://i.postimg.cc/3NhVMt5r/portfolio.png',
            //       'category': 'Open Source',
            //       'links': [
            //         {
            //           'type': 'app',
            //           'url': 'https://mujtaba-portfolio.web.app/#/desktop',
            //         },
            //         {
            //           'type': 'play',
            //           'url': 'https://mujtaba-portfolio.web.app/#/desktop',
            //         },
            //         {
            //           'type': 'web',
            //           'url': 'https://mujtaba-portfolio.web.app/#/desktop',
            //         },
            //         {
            //           'type': 'github',
            //           'url': 'https://github.com/iammujtaba44/portfolio_app',
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
        flex: 1,
        child: AppGradient.shaderMask(
          color: AppGradient.tealGradient,
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: context.primaryColor.withAlpha(100),
              image: DecorationImage(
                image: AssetImage('assets/profile/profile_main_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    } else {
      if (isPositioned && !context.isDesktop) {
        return Positioned(
          top: 0,
          right: 10,
          child: AppGradient.shaderMask(
            color: AppGradient.tealGradient,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: context.primaryColor.withAlpha(100),
                boxShadow: [
                  BoxShadow(
                    color: context.primaryColor.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: const Offset(20, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  'assets/profile/profile_main.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      }
      return const SizedBox.shrink();
    }
  }
}
