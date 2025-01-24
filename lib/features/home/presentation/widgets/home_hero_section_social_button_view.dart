import 'package:flutter/material.dart';
import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
import 'package:portfolio_app/core/services/locator_service.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/experience/data/services/i_experience_service.dart';

class HomeHeroSectionSocialButtonView extends StatelessWidget {
  const HomeHeroSectionSocialButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        const SocialLinksWidget(),
        SocialButton(
          onPressed: () {
            //locator.get<IExperienceService>().fetchExperiences();

            // locator.get<IDatabaseService>().updateData('experiences', {
            //   'full_time': [
            //     {
            //       'company': 'Eyewa',
            //       'position': 'Senior Software Engineer (Mobile)',
            //       'duration': 'Feb 2022 - Present (3 years and present)',
            //       'role': 'Full Time',
            //       'country': 'United Arab Emirates',
            //       'technologies': [
            //         'Flutter',
            //         'Dart',
            //         'Android',
            //         'iOS',
            //         'Kotlin',
            //         'Swift',
            //         'Rest API',
            //         'Firebase',
            //         'Github Actions',
            //         'CI/CD',
            //         'Deeplink',
            //         'Deferred Deep Link',
            //         'Web Links',
            //         'Tammara - Payment integration',
            //         'Tabby - Payment integration',
            //         'Apple Pay',
            //         'Google Pay',
            //         'AppsFlyer',
            //         'Storifyme',
            //         'Braze',
            //         'Amplitude',
            //         'In-App Messaging',
            //         'A/B Test',
            //         'Integration Testing',
            //         'Unit Testing',
            //         'UI Testing',
            //         'Golden Testing',
            //         'AR Development',
            //       ],
            //       'description': [
            //         'Optimizing application performance, scalability, and maintainability.',
            //         'Developed the overall architecture and design of the mobile application platform.',
            //         'Developed native platform-specific features (iOS, Android).',
            //         'Developed Ios and Android native features using Swift and Kotlin.',
            //         'Developed CI/CD pipelines using Github Actions and Codemagic.',
            //         'Developed Flavors with various dart define and envs for different environments.',
            //         'Working with provider state management, alongside clean architecture approach to maintain local states and global use cases',
            //         'Writing unit, integration tests and implemented a/b testing',
            //         'Integration of REST APIs, Firebase and local cached concepts for better user experience',
            //         'Integrated  AppsFlyer for deeplinks, deferred deep links and marketing compaigns',
            //         'Integrated  Braze for In-App Messaging and push notifications.',
            //         'Integrated  Adjust for marketing compaigns',
            //         'Integrated  Tammara for payment integration.',
            //         'Integrated  Tabby for payment integration.',
            //         'Integrated  Apple Pay for payment integration.',
            //         'Integrated  Google Pay for payment integration.',
            //         'Integrated  Storifyme for in app stories.',
            //         'Conduct code reviews and ensure adherence to coding standards and best practices.',
            //         'Building complex UI layouts and animations using Flutter.',
            //         'Experiencing with performance profiling and optimization tools.',
            //       ]
            //     },
            //     {
            //       'company': 'ePlanet Communications Inc',
            //       'position': 'Software Engineer (Mobile)',
            //       'duration': 'Dec 2019 - Jan 2022 (2 years 2 months)',
            //       'role': 'Full Time',
            //       'country': 'Pakistan',
            //       'technologies': [
            //         'Flutter',
            //         'Dart',
            //         'Android',
            //         'iOS',
            //         'Kotlin',
            //         'Swift',
            //         'Rest API',
            //         'Firebase',
            //         'Github Actions',
            //         'CI/CD',
            //         'Deeplink',
            //         'Deferred Deep Link',
            //         'In-App Messaging',
            //         'Integration Testing',
            //         'Unit Testing',
            //         'UI Testing',
            //       ],
            //       'description': [
            //         'Optimizing application performance, scalability, and maintainability.',
            //         'Developed applications with flutter_bloc, provider, getx state management, alongside local states and global use cases'
            //             'Developed the overall architecture and design of the mobile applications platform.',
            //         'Developed native platform-specific features (iOS, Android).',
            //         'Developed Ios and Android native features using Swift and Kotlin.',
            //         'Developed CI/CD pipelines using Github Actions.',
            //         'Developed Flavors with various dart define and envs for different environments.',
            //         'Developed applications with layered, clean, and modular architecture approach.',
            //         'Writing unit, integration tests',
            //         'Integration of REST APIs, Firebase and local cached concepts for better user experience',
            //         'Integrated  deeplinks, deferred deep links ',
            //         'Integrated  Apple Pay for payment integration.',
            //         'Integrated  Google Pay for payment integration.',
            //         'Conduct code reviews and ensure adherence to coding standards and best practices.',
            //         'Building complex UI layouts and animations using Flutter.',
            //         'Experiencing with performance profiling and optimization tools.',
            //       ]
            //     },
            //     {
            //       'company': 'Creative Ideator',
            //       'position': 'Software Engineer (Mobile)',
            //       'duration': 'Oct 2018 - Nov 2019 (1 year 2 months)',
            //       'role': 'Full Time',
            //       'country': 'Pakistan',
            //       'technologies': [
            //         'Flutter',
            //         'Dart',
            //         'Android',
            //         'Kotlin',
            //         'Rest API',
            //         'Firebase',
            //         'Deeplink',
            //         'In-App Messaging',
            //         'Complex UI Layouts',
            //       ],
            //       'description': [
            //         'Developed applications with flutter_bloc and provider state management'
            //             'Developed the overall architecture and design of the mobile applications platform.',
            //         'Developed Android native features using Kotlin.',
            //         'Developed applications with layered, clean, and modular architecture approach.',
            //         'Maintaining and updating the existing codebase using flutter and kotlin.',
            //         'Integration of REST APIs and Firebase ',
            //         'Integrated  deeplinks',
            //         'Building complex UI layouts and animations using Flutter.',
            //       ]
            //     },
            //     {
            //       'company': 'TPS WorldWide',
            //       'position': 'Junior Software Engineer (Mobile)',
            //       'duration': 'Feb 2018 - Sep 2018 (9 months)',
            //       'role': 'Full Time',
            //       'country': 'Pakistan',
            //       'technologies': [
            //         'Android',
            //         'Java',
            //         'Rest API',
            //         'Complex UI Layouts',
            //       ],
            //       'description': [
            //         'Developed Android native features using Java.',
            //         'Integration of REST APIs',
            //         'Building complex UI layouts and animations using Android.',
            //         'Maintaining and updating the existing codebase using Android.',
            //       ]
            //     },
            //     {
            //       'company': 'TPS WorldWide',
            //       'position': 'Android Internship ',
            //       'duration': 'Sep 2017 - Jan 2018 (5 months)',
            //       'role': 'Full Time',
            //       'country': 'Pakistan',
            //       'technologies': [
            //         'Android',
            //         'Java',
            //         'Rest API',
            //       ],
            //       'description': [
            //         'Developed Android native features using Java.',
            //         'Integration of REST APIs',
            //         'Maintaining and updating the existing codebase using Android.',
            //       ]
            //     }
            //   ]
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
