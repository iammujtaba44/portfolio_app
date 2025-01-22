// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectsModelImpl _$$ProjectsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectsModelImpl(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectsModelImplToJson(_$ProjectsModelImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      description: json['description'] as String?,
      category: json['category'] as String?,
      imageUrl: json['imageUrl'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'category': instance.category,
      'imageUrl': instance.imageUrl,
      'links': instance.links,
      'title': instance.title,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      type: ProjectLinkTypeEnum.fromString(json['type'] as String),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'type': _$ProjectLinkTypeEnumEnumMap[instance.type]!,
      'url': instance.url,
    };

const _$ProjectLinkTypeEnumEnumMap = {
  ProjectLinkTypeEnum.play: 'play',
  ProjectLinkTypeEnum.web: 'web',
  ProjectLinkTypeEnum.github: 'github',
  ProjectLinkTypeEnum.app: 'app',
  ProjectLinkTypeEnum.package: 'package',
};
