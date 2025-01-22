import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/core/extensions/context_extensions.dart';
import 'package:portfolio_app/features/tech_stack/presentation/providers/tech_stack_provider.dart';
import 'package:portfolio_app/features/tech_stack/presentation/widgets/tech_stack_categories_list_widget.dart';
import 'package:portfolio_app/features/tech_stack/presentation/widgets/tech_stack_category_widget.dart';
import 'package:provider/provider.dart';
import '../../../../core/widgets/responsive_wrapper.dart';
import '../../domain/models/tech_stack_model.dart';

class TechStackPage extends StatefulWidget {
  const TechStackPage({super.key});

  @override
  State<TechStackPage> createState() => _TechState();
}

class _TechState extends State<TechStackPage> {
  @override
  void initState() {
    super.initState();
    context.read<TechStackProvider>().fetchTechStacks();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TechStackProvider>(
      builder: (context, techStackProvider, child) {
        if (techStackProvider.state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Container(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: EdgeInsets.symmetric(
              horizontal: context.isDesktop ? 120 : 24,
              vertical: 24,
            ),
            children: [
              Text(
                'Tech Stack',
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: Text(
                  'Change is inevitable, so I keep on exploring new technology,\nlearn it in a minimal possible way and then build something\nout of it to see how well I did :)',
                  style: GoogleFonts.poppins(
                    color: Colors.grey[400],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              _buildMainWidget(techStackProvider),
            ],
          ),
        );
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
