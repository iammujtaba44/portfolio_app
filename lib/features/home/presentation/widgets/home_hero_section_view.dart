import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/providers/app_config_provider.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_hero_section_image_view.dart';
import 'package:portfolio_app/features/home/presentation/widgets/home_hero_section_social_button_view.dart';
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
          const HomeHeroSectionImageView(),
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
        const HomeHeroSectionSocialButtonView(),
      ],
    );
  }
}
