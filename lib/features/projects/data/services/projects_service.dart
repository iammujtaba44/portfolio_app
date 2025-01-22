import 'dart:developer';
import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
import 'package:portfolio_app/features/projects/data/services/i_projects_service.dart';
import 'package:portfolio_app/features/projects/domain/mapper/projects_mapper.dart';
import 'package:portfolio_app/features/projects/domain/models/projects_model.dart';

class ProjectsService implements IProjectsService {
  final IDatabaseService _databaseService;

  ProjectsService(this._databaseService);

  @override
  Future<List<Project>> fetchProjects() async {
    try {
      final data = await _databaseService.getData('projects');
      final projects = ProjectsMapper.map(data);
      return projects;
    } catch (e) {
      log('Error fetching projects: $e', name: 'ProjectsService error');
      rethrow;
    }
  }
}
