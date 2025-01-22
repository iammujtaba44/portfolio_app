import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';

abstract class ITechStackService {
  Future<List<TechStackCategoryModel>> fetchTechStacks();
  Future<void> addTechStack(TechStackCategoryModel category);
}
