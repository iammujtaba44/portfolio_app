import 'package:portfolio_app/features/projects/domain/models/projects_model.dart';

abstract class IProjectsService {
  Future<List<Project>> fetchProjects();
}
