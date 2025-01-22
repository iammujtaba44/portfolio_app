class SocialAccountModel {
  final String url;
  final SocialAccountType? label;

  SocialAccountModel({
    required this.url,
    this.label,
  });

  factory SocialAccountModel.fromMap(Map<String, dynamic> map) {
    return SocialAccountModel(
      url: map['url'],
      label: SocialAccountType.fromString(map['label']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'label': label,
    };
  }

  String get image {
    switch (label) {
      case SocialAccountType.github:
        return 'assets/social/github.png';
      case SocialAccountType.linkedin:
        return 'assets/social/linkedin.png';
      case SocialAccountType.facebook:
        return 'assets/social/facebook.png';
      case SocialAccountType.instagram:
        return 'assets/social/instagram.png';
      default:
        return 'assets/social/github.png';
    }
  }
}

enum SocialAccountType {
  github,
  linkedin,
  facebook,
  instagram,
  unknown;

  factory SocialAccountType.fromString(String value) {
    return SocialAccountType.values.firstWhere(
      (e) => e.name == value.toLowerCase(),
      orElse: () => SocialAccountType.unknown,
    );
  }
}
