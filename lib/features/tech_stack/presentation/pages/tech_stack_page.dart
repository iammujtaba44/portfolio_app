import 'package:flutter/material.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/core/providers/app_config_provider.dart';
import 'package:portfolio_app/core/widgets/widgets.dart';
import 'package:portfolio_app/features/tech_stack/presentation/providers/tech_stack_provider.dart';
import 'package:portfolio_app/features/tech_stack/presentation/widgets/loading/tech_stack_loading_view.dart';
import 'package:portfolio_app/features/tech_stack/presentation/widgets/tech_stack_categories_list_widget.dart';
import 'package:portfolio_app/resources/resources.dart';
import 'package:provider/provider.dart';

class TechStackPage extends StatefulWidget {
  const TechStackPage({super.key});

  @override
  State<TechStackPage> createState() => _TechState();
}

class _TechState extends State<TechStackPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<TechStackProvider>().fetchTechStacks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<TechStackProvider, AppConfigProvider>(
      builder: (context, techStackProvider, appConfigProvider, child) {
        if (techStackProvider.state.isLoading) {
          return const TechStackLoadingView();
        }
        return Container(
            decoration: BoxDecoration(gradient: AppGradient.blackGradient(context)),
            child: Stack(
              children: [
                WaterMarkView(watermark: 'T\nE\nC\nH'),
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
                      title: 'What I',
                      highlightTitle: 'Do?',
                      description: appConfigProvider.appConfigs?.techDescription ?? '',
                    ),
                    _buildMainWidget(techStackProvider),
                  ],
                ),
              ],
            ));
      },
    );
  }

  Widget _buildMainWidget(TechStackProvider techStackProvider) {
    if (context.isDesktop) {
      return Row(children: [
        Expanded(
          child: TechStackCategoriesListWidget(
            categories: techStackProvider.techStacks,
          ),
        ),
        _buildTechStackImage(),
      ]);
    }
    return Column(children: [
      TechStackCategoriesListWidget(
        categories: techStackProvider.techStacks,
      ),
      const SizedBox(height: 56),
      _buildTechStackImage(),
    ]);
  }

  Widget _buildTechStackImage() {
    return Image.asset(
      'assets/tech/tech_stack_main.png',
      width: 300,
      height: 300,
    );
  }
}
