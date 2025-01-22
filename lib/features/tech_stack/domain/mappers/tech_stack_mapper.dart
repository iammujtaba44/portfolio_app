import 'dart:developer';

import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';

const List<String> techStackCategories = [
  'mobile_development',
  'web_development',
  'server_side',
  'database',
  'ci_cd',
  'version_controlling_management',
  'ui_ux',
];

class TechStackMapper {
  static List<TechStackCategoryModel> map(Map<String, dynamic> data) {
    final List<TechStackCategoryModel> categories = [];
    for (var category in techStackCategories) {
      final List<TechStackModel> stacks = [];
      final categoryData = Map<String, dynamic>.from(data[category]);
      for (var stack in categoryData['stacks']) {
        final stackData = Map<String, dynamic>.from(stack);
        final stackModel = TechStackModel.fromJson(stackData);
        stacks.add(stackModel);
      }

      final categoryModel = TechStackCategoryModel(
        categoryName: categoryData['category_name'],
        stacks: stacks,
      );
      categories.add(categoryModel);
    }
    return categories;
  }

  static TechStackCategoryModel mapSingle(Map<String, dynamic> data) {
    return TechStackCategoryModel.fromJson(data);
  }
}
