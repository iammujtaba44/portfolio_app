import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'experience.freezed.dart';
part 'experience.g.dart';

@freezed
class Experience with _$Experience {
  const factory Experience({
    @JsonKey(name: "company") required String company,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "description") required List<String> description,
    @JsonKey(name: "duration") required String duration,
    @JsonKey(name: "position") required String position,
    @JsonKey(name: "role") required String role,
    @JsonKey(name: "technologies") required List<String> technologies,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);
}

enum ExperienceType {
  fullTime,
  partTime;

  static ExperienceType fromJson(String json) {
    return ExperienceType.values.firstWhere((e) => e.name == json);
  }
}

extension ExperienceTypeX on ExperienceType {
  String get name => switch (this) {
        ExperienceType.fullTime => 'full_time',
        ExperienceType.partTime => 'part_time',
      };
}
