import 'dart:developer';
import 'package:portfolio_app/core/providers/base_provider.dart';
import 'package:portfolio_app/features/projects/data/services/i_projects_service.dart';
import 'package:portfolio_app/features/projects/domain/models/projects_model.dart';

class ProjectsProvider extends BaseProvider {
  final IProjectsService _projectsService;

  ProjectsProvider({
    required IProjectsService projectsService,
  }) : _projectsService = projectsService;

  List<Project> _projects = [];

  List<Project> get projects => _projects;

  Future<void> fetchProjects() async {
    try {
      setState(const BaseProviderState.loading());
      final projects = await _projectsService.fetchProjects();
      _projects = projects;
    } catch (e) {
      log('Error fetching projects: $e', name: 'ProjectsProvider');
      setState(BaseProviderState.error(error: e.toString()));
    } finally {
      setState(const BaseProviderState.loaded());
      notifyListeners();
    }
  }
}
