import 'dart:developer';

import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
import 'package:portfolio_app/features/tech_stack/data/services/i_tech_stack_service.dart';
import 'package:portfolio_app/features/tech_stack/domain/models/tech_stack_model.dart';
import 'package:portfolio_app/features/tech_stack/domain/mappers/tech_stack_mapper.dart';

class TechStackService implements ITechStackService {
  final IDatabaseService _databaseService;

  TechStackService(this._databaseService);

  @override
  Future<List<TechStackCategoryModel>> fetchTechStacks() async {
    final data = await _databaseService.getData('techStack');
    return TechStackMapper.map(data);
  }

  @override
  Future<void> addTechStack(TechStackCategoryModel category) async {
    await _databaseService.updateData('techStacks', category.toJson());
  }
}
