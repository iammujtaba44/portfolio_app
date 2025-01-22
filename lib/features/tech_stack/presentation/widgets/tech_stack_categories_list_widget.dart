import 'package:flutter/material.dart';
import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';
import 'package:portfolio_app/features/tech_stack/presentation/widgets/tech_stack_category_widget.dart';

class TechStackCategoriesListWidget extends StatelessWidget {
  final List<TechStackCategoryModel> categories;

  const TechStackCategoriesListWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemBuilder: (context, index) {
        return TechStackCategoryWidget(
          model: categories[index],
        );
      },
    );
  }
}
