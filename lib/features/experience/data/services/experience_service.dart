import 'dart:developer';

import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
import 'package:portfolio_app/features/experience/data/services/i_experience_service.dart';
import 'package:portfolio_app/features/experience/domain/mappers/experience_mapper.dart';
import 'package:portfolio_app/features/experience/domain/models/experience.dart';

class ExperienceService implements IExperienceService {
  final IDatabaseService _databaseService;

  ExperienceService(this._databaseService);

  @override
  Future<Map<ExperienceType, List<Experience>>> fetchExperiences() async {
    try {
      final data = await _databaseService.getData('experiences');
      final experiences = ExperienceMapper.map(data);
      return experiences;
    } catch (e) {
      log('Error fetching experiences: $e', name: 'ExperienceService error');
      rethrow;
    }
  }
}
