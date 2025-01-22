import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:portfolio_app/features/projects/domain/project_enum.dart';

part 'projects_model.freezed.dart';
part 'projects_model.g.dart';

@freezed
class ProjectsModel with _$ProjectsModel {
  const factory ProjectsModel({
    @JsonKey(name: "projects") required List<Project> projects,
  }) = _ProjectsModel;

  factory ProjectsModel.fromJson(Map<String, dynamic> json) => _$ProjectsModelFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "imageUrl") required String imageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "title") required String title,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "type", fromJson: ProjectLinkTypeEnum.fromString)
    required ProjectLinkTypeEnum type,
    @JsonKey(name: "url") required String url,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
