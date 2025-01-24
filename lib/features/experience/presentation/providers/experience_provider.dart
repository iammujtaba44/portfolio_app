import 'dart:developer';
import 'package:portfolio_app/core/providers/base_provider.dart';
import 'package:portfolio_app/features/experience/data/services/i_experience_service.dart';
import 'package:portfolio_app/features/experience/domain/models/experience.dart';

class ExperienceProvider extends BaseProvider {
  final IExperienceService _experienceService;

  ExperienceProvider({
    required IExperienceService experienceService,
  }) : _experienceService = experienceService;

  Map<ExperienceType, List<Experience>> _experiences = {};

  List<Experience> get fullTimeExperiences => _experiences[ExperienceType.fullTime] ?? [];
  List<Experience> get partTimeExperiences => _experiences[ExperienceType.partTime] ?? [];

  Future<void> fetchExperiences() async {
    try {
      setState(const BaseProviderState.loading());
      final experiences = await _experienceService.fetchExperiences();
      _experiences = experiences;
      notifyListeners();
    } catch (e) {
      log('Error fetching experiences: $e', name: 'ExperienceProvider');
      setState(BaseProviderState.error(error: e.toString()));
    } finally {
      setState(const BaseProviderState.loaded());
      notifyListeners();
    }
  }
}
