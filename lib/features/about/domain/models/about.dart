class About {
  final String name;
  final String title;
  final String description;
  final String profileImage;
  final List<Experience> experiences;
  final List<Education> education;

  About({
    required this.name,
    required this.title,
    required this.description,
    required this.profileImage,
    required this.experiences,
    required this.education,
  });
}

class Experience {
  final String company;
  final String position;
  final String duration;
  final String description;

  Experience({
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
  });
}

class Education {
  final String institution;
  final String degree;
  final String duration;
  final String description;

  Education({
    required this.institution,
    required this.degree,
    required this.duration,
    required this.description,
  });
}
