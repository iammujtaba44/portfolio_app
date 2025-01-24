// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExperienceImpl _$$ExperienceImplFromJson(Map<String, dynamic> json) =>
    _$ExperienceImpl(
      company: json['company'] as String,
      country: json['country'] as String,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      duration: json['duration'] as String,
      position: json['position'] as String,
      role: json['role'] as String,
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ExperienceImplToJson(_$ExperienceImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'country': instance.country,
      'description': instance.description,
      'duration': instance.duration,
      'position': instance.position,
      'role': instance.role,
      'technologies': instance.technologies,
    };
