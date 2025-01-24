// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_configs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigsImpl _$$AppConfigsImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigsImpl(
      about: json['about'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      title: json['title'] as String?,
      totalAwards: json['total_awards'] as String?,
      totalClients: json['total_clients'] as String?,
      totalExperience: json['total_experience'] as String?,
      totalProjects: json['total_projects'] as String?,
      techDescription: json['tech_desc'] as String?,
      projectsDescription: json['projects_desc'] as String?,
      repositoriesUrl: json['repositories'] as String?,
    );

Map<String, dynamic> _$$AppConfigsImplToJson(_$AppConfigsImpl instance) =>
    <String, dynamic>{
      'about': instance.about,
      'email': instance.email,
      'phone': instance.phone,
      'title': instance.title,
      'total_awards': instance.totalAwards,
      'total_clients': instance.totalClients,
      'total_experience': instance.totalExperience,
      'total_projects': instance.totalProjects,
      'tech_desc': instance.techDescription,
      'projects_desc': instance.projectsDescription,
      'repositories': instance.repositoriesUrl,
    };
