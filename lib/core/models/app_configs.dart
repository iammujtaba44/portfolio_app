// To parse this JSON data, do
//
//     final appConfigs = appConfigsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'app_configs.freezed.dart';
part 'app_configs.g.dart';

@freezed
class AppConfigs with _$AppConfigs {
  const factory AppConfigs({
    @JsonKey(name: "about") String? about,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "total_awards") String? totalAwards,
    @JsonKey(name: "total_clients") String? totalClients,
    @JsonKey(name: "total_experience") String? totalExperience,
    @JsonKey(name: "total_projects") String? totalProjects,
    @JsonKey(name: "tech_desc") String? techDescription,
    @JsonKey(name: "projects_desc") String? projectsDescription,
    @JsonKey(name: "repositories") String? repositoriesUrl,
  }) = _AppConfigs;

  factory AppConfigs.fromJson(Map<String, dynamic> json) => _$AppConfigsFromJson(json);
}
