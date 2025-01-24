import 'package:portfolio_app/features/experience/domain/models/experience.dart';

abstract class ExperienceMapper {
  static Map<ExperienceType, List<Experience>> map(Map<String, dynamic> data) {
    return {
      ExperienceType.fullTime: _parseExperiences(data['full_time'] as List<dynamic>),
      ExperienceType.partTime: _parseExperiences(data['part_time'] as List<dynamic>? ?? []),
    };
  }

  static List<Experience> _parseExperiences(List<dynamic> experiences) {
    return experiences.map((experience) {
      final description = experience['description'] as List<dynamic>;
      final technologies = experience['technologies'] as List<dynamic>;

      return Experience(
        company: experience['company'],
        country: experience['country'],
        duration: experience['duration'],
        position: experience['position'],
        role: experience['role'],
        description: description.map((e) => e.toString()).toList(),
        technologies: technologies.map((e) => e.toString()).toList(),
      );
    }).toList();
  }
}
