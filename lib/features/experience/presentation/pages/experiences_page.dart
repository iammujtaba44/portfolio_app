import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/experience/presentation/providers/experience_provider.dart';
import 'package:portfolio_app/features/experience/presentation/widgets/experience_page_item_view.dart';
import 'package:portfolio_app/resources/resources.dart';
import 'package:provider/provider.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({super.key});

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ExperienceProvider>().fetchExperiences();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ExperienceProvider>();
    return Container(
      decoration: BoxDecoration(gradient: AppGradient.blackGradient(context)),
      child: Stack(
        children: [
          const WaterMarkView(watermark: 'E\nX\nP\nE\nR\nI\nE\nN\nC\nE'),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: EdgeInsets.symmetric(
              horizontal: context.isDesktop ? 120 : 24,
              vertical: 24,
            ),
            children: [
              PageHeaderTextWidget(
                title: 'What I have',
                highlightTitle: 'Done So Far!',
                description: 'My professional journey and experience in software development.',
              ),
              const SizedBox(height: 20),
              ...provider.fullTimeExperiences.map(
                (experience) => ExperiencePageItemView(experience: experience),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
