import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HomeStatisticsSectionView extends StatelessWidget {
  const HomeStatisticsSectionView({
    super.key,
    this.valueColor,
    this.labelColor,
    this.bottomPadding,
  });
  final Color? valueColor;
  final Color? labelColor;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    final appConfigs = context.watch<AppConfigProvider>().appConfigs;
    return Padding(
      padding: EdgeInsets.symmetric().copyWith(
        bottom: context.isDesktop ? bottomPadding ?? 40.0 : 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: context.isDesktop ? 40 : 20,
        children: [
          _buildStatistic(context, '~${appConfigs?.totalExperience}', 'Years of\nExperience'),
          _buildStatistic(
              context, '${appConfigs?.totalProjects}+', 'Projects Completed\nin 10+ Countries'),
          _buildStatistic(context, '${appConfigs?.totalClients}+', 'Happy\nClients'),
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
          style: GoogleFonts.urbanist(
            color: valueColor ?? context.primaryTextColor,
            fontSize: context.isDesktop ? 30 : 22,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        SizedBox(width: 5),
        Padding(
          padding: EdgeInsets.only(top: 7),
          child: Text(
            label,
            style: GoogleFonts.urbanist(
              color: labelColor ?? context.primaryColor,
              fontSize: context.isDesktop ? 10 : 8,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}
