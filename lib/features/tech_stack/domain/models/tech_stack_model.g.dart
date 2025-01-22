// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_stack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TechStackCategoryModelImpl _$$TechStackCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TechStackCategoryModelImpl(
      categoryName: json['category_name'] as String,
      stacks: (json['stacks'] as List<dynamic>)
          .map((e) => TechStackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TechStackCategoryModelImplToJson(
        _$TechStackCategoryModelImpl instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'stacks': instance.stacks,
    };

_$TechStackModelImpl _$$TechStackModelImplFromJson(Map<String, dynamic> json) =>
    _$TechStackModelImpl(
      name: json['name'] as String,
      proficiency: (json['proficiency'] as num?)?.toDouble() ?? 0.0,
      iconPath: json['iconPath'] as String,
    );

Map<String, dynamic> _$$TechStackModelImplToJson(
        _$TechStackModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'proficiency': instance.proficiency,
      'iconPath': instance.iconPath,
    };
