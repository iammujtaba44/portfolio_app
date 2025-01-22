import 'package:freezed_annotation/freezed_annotation.dart';

part 'tech_stack_model.freezed.dart';
part 'tech_stack_model.g.dart';

@Freezed(copyWith: true)
class TechStackCategoryModel with _$TechStackCategoryModel {
  const factory TechStackCategoryModel({
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'stacks') required List<TechStackModel> stacks,
  }) = _TechStackCategoryModel;

  factory TechStackCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$TechStackCategoryModelFromJson(json);
}

@Freezed(copyWith: true)
class TechStackModel with _$TechStackModel {
  const factory TechStackModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(defaultValue: 0.0) double? proficiency,
    @JsonKey(name: 'iconPath') required String iconPath,
  }) = _TechStackModel;

  factory TechStackModel.fromJson(Map<String, dynamic> json) => _$TechStackModelFromJson(json);
}
