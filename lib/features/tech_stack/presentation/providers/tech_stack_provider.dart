import 'dart:developer';
import 'package:portfolio_app/core/providers/base_provider.dart';
import 'package:portfolio_app/features/tech_stack/data/services/i_tech_stack_service.dart';
import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';

class TechStackProvider extends BaseProvider {
  final ITechStackService _techStackService;

  TechStackProvider({
    required ITechStackService techStackService,
  }) : _techStackService = techStackService;

  List<TechStackCategoryModel> _techStackCategories = [];

  List<TechStackCategoryModel> get techStacks => _techStackCategories;

  Future<void> fetchTechStacks() async {
    try {
      setState(const BaseProviderState.loading());
      final categories = await _techStackService.fetchTechStacks();
      _techStackCategories = categories;
    } catch (e) {
      log('Error fetching tech stacks: $e', name: 'TechStackProvider');
      setState(BaseProviderState.error(error: e.toString()));
    } finally {
      setState(const BaseProviderState.loaded());
      notifyListeners();
    }
  }
}
