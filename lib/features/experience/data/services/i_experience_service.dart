import 'package:portfolio_app/features/experience/domain/models/experience.dart';

abstract class IExperienceService {
  Future<Map<ExperienceType, List<Experience>>> fetchExperiences();
}
