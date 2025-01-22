import 'package:flutter/material.dart' show Icons;

enum ProjectLinkTypeEnum {
  play,
  web,
  github,
  app,
  package;

  static ProjectLinkTypeEnum fromString(String value) {
    return ProjectLinkTypeEnum.values.firstWhere(
      (e) => e.name.toLowerCase() == value.toLowerCase(),
      orElse: () => ProjectLinkTypeEnum.web,
    );
  }
}

extension ProjectLinkTypeEnumExtension on ProjectLinkTypeEnum {
  String get name => switch (this) {
        ProjectLinkTypeEnum.play => 'Play',
        ProjectLinkTypeEnum.web => 'Web',
        ProjectLinkTypeEnum.github => 'GitHub',
        ProjectLinkTypeEnum.app => 'App',
        ProjectLinkTypeEnum.package => 'Package',
      };

  dynamic get icon {
    return switch (this) {
      ProjectLinkTypeEnum.play => 'assets/tech/play.png',
      ProjectLinkTypeEnum.web => Icons.language,
      ProjectLinkTypeEnum.github => 'assets/social/github.png',
      ProjectLinkTypeEnum.app => 'assets/tech/ios.png',
      ProjectLinkTypeEnum.package => Icons.inventory_2,
    };
  }
}
