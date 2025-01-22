import 'dart:developer';

import 'package:portfolio_app/features/projects/domain/models/projects_model.dart';
import 'package:portfolio_app/features/projects/domain/project_enum.dart';

class ProjectsMapper {
  static List<Project> map(Map<String, dynamic> dto) {
    try {
      final projectsList = dto['projects'] as List<dynamic>?;
      if (projectsList == null) return [];

      return projectsList
          .map((project) => _mapSingleProject(project))
          .where((project) => project != null)
          .cast<Project>()
          .toList();
    } catch (e) {
      log('Error mapping projects: $e');
      return [];
    }
  }

  static Project? _mapSingleProject(dynamic projectData) {
    try {
      final project = Map<String, dynamic>.from(projectData);
      return Project(
        imageUrl: project['imageUrl'] as String? ?? '',
        links: toLinkList(project),
        title: project['title'] as String? ?? '',
        description: project['description'] as String? ?? '',
        category: project['category'] as String? ?? '',
      );
    } catch (e) {
      log('Error mapping single project: $e');
      return null;
    }
  }

  static List<Link> toLinkList(Map<String, dynamic> dto) {
    try {
      final linksList = dto['links'] as List<dynamic>?;
      if (linksList == null) return [];
      return linksList
          .map((link) => _mapSingleLink(link))
          .where((link) => link != null)
          .cast<Link>()
          .toList();
    } catch (e) {
      log('Error mapping links: $e');
      return [];
    }
  }

  static Link? _mapSingleLink(dynamic linkData) {
    try {
      final link = Map<String, dynamic>.from(linkData);

      return Link(
        url: link['url'] as String? ?? '',
        type: ProjectLinkTypeEnum.fromString(link['type'] as String? ?? ''),
      );
    } catch (e) {
      log('Error mapping single link: $e');
      return null;
    }
  }
}
