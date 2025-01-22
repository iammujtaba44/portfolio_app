// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tech_stack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TechStackCategoryModel _$TechStackCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _TechStackCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$TechStackCategoryModel {
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'stacks')
  List<TechStackModel> get stacks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechStackCategoryModelCopyWith<TechStackCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechStackCategoryModelCopyWith<$Res> {
  factory $TechStackCategoryModelCopyWith(TechStackCategoryModel value,
          $Res Function(TechStackCategoryModel) then) =
      _$TechStackCategoryModelCopyWithImpl<$Res, TechStackCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'stacks') List<TechStackModel> stacks});
}

/// @nodoc
class _$TechStackCategoryModelCopyWithImpl<$Res,
        $Val extends TechStackCategoryModel>
    implements $TechStackCategoryModelCopyWith<$Res> {
  _$TechStackCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? stacks = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      stacks: null == stacks
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as List<TechStackModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechStackCategoryModelImplCopyWith<$Res>
    implements $TechStackCategoryModelCopyWith<$Res> {
  factory _$$TechStackCategoryModelImplCopyWith(
          _$TechStackCategoryModelImpl value,
          $Res Function(_$TechStackCategoryModelImpl) then) =
      __$$TechStackCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'stacks') List<TechStackModel> stacks});
}

/// @nodoc
class __$$TechStackCategoryModelImplCopyWithImpl<$Res>
    extends _$TechStackCategoryModelCopyWithImpl<$Res,
        _$TechStackCategoryModelImpl>
    implements _$$TechStackCategoryModelImplCopyWith<$Res> {
  __$$TechStackCategoryModelImplCopyWithImpl(
      _$TechStackCategoryModelImpl _value,
      $Res Function(_$TechStackCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? stacks = null,
  }) {
    return _then(_$TechStackCategoryModelImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      stacks: null == stacks
          ? _value._stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as List<TechStackModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TechStackCategoryModelImpl implements _TechStackCategoryModel {
  const _$TechStackCategoryModelImpl(
      {@JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'stacks') required final List<TechStackModel> stacks})
      : _stacks = stacks;

  factory _$TechStackCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechStackCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  final List<TechStackModel> _stacks;
  @override
  @JsonKey(name: 'stacks')
  List<TechStackModel> get stacks {
    if (_stacks is EqualUnmodifiableListView) return _stacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stacks);
  }

  @override
  String toString() {
    return 'TechStackCategoryModel(categoryName: $categoryName, stacks: $stacks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechStackCategoryModelImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality().equals(other._stacks, _stacks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryName, const DeepCollectionEquality().hash(_stacks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechStackCategoryModelImplCopyWith<_$TechStackCategoryModelImpl>
      get copyWith => __$$TechStackCategoryModelImplCopyWithImpl<
          _$TechStackCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechStackCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _TechStackCategoryModel implements TechStackCategoryModel {
  const factory _TechStackCategoryModel(
          {@JsonKey(name: 'category_name') required final String categoryName,
          @JsonKey(name: 'stacks')
          required final List<TechStackModel> stacks}) =
      _$TechStackCategoryModelImpl;

  factory _TechStackCategoryModel.fromJson(Map<String, dynamic> json) =
      _$TechStackCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'stacks')
  List<TechStackModel> get stacks;
  @override
  @JsonKey(ignore: true)
  _$$TechStackCategoryModelImplCopyWith<_$TechStackCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TechStackModel _$TechStackModelFromJson(Map<String, dynamic> json) {
  return _TechStackModel.fromJson(json);
}

/// @nodoc
mixin _$TechStackModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double? get proficiency => throw _privateConstructorUsedError;
  @JsonKey(name: 'iconPath')
  String get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechStackModelCopyWith<TechStackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechStackModelCopyWith<$Res> {
  factory $TechStackModelCopyWith(
          TechStackModel value, $Res Function(TechStackModel) then) =
      _$TechStackModelCopyWithImpl<$Res, TechStackModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(defaultValue: 0.0) double? proficiency,
      @JsonKey(name: 'iconPath') String iconPath});
}

/// @nodoc
class _$TechStackModelCopyWithImpl<$Res, $Val extends TechStackModel>
    implements $TechStackModelCopyWith<$Res> {
  _$TechStackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? proficiency = freezed,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      proficiency: freezed == proficiency
          ? _value.proficiency
          : proficiency // ignore: cast_nullable_to_non_nullable
              as double?,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechStackModelImplCopyWith<$Res>
    implements $TechStackModelCopyWith<$Res> {
  factory _$$TechStackModelImplCopyWith(_$TechStackModelImpl value,
          $Res Function(_$TechStackModelImpl) then) =
      __$$TechStackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(defaultValue: 0.0) double? proficiency,
      @JsonKey(name: 'iconPath') String iconPath});
}

/// @nodoc
class __$$TechStackModelImplCopyWithImpl<$Res>
    extends _$TechStackModelCopyWithImpl<$Res, _$TechStackModelImpl>
    implements _$$TechStackModelImplCopyWith<$Res> {
  __$$TechStackModelImplCopyWithImpl(
      _$TechStackModelImpl _value, $Res Function(_$TechStackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? proficiency = freezed,
    Object? iconPath = null,
  }) {
    return _then(_$TechStackModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      proficiency: freezed == proficiency
          ? _value.proficiency
          : proficiency // ignore: cast_nullable_to_non_nullable
              as double?,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TechStackModelImpl implements _TechStackModel {
  const _$TechStackModelImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(defaultValue: 0.0) this.proficiency,
      @JsonKey(name: 'iconPath') required this.iconPath});

  factory _$TechStackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechStackModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(defaultValue: 0.0)
  final double? proficiency;
  @override
  @JsonKey(name: 'iconPath')
  final String iconPath;

  @override
  String toString() {
    return 'TechStackModel(name: $name, proficiency: $proficiency, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechStackModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.proficiency, proficiency) ||
                other.proficiency == proficiency) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, proficiency, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechStackModelImplCopyWith<_$TechStackModelImpl> get copyWith =>
      __$$TechStackModelImplCopyWithImpl<_$TechStackModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechStackModelImplToJson(
      this,
    );
  }
}

abstract class _TechStackModel implements TechStackModel {
  const factory _TechStackModel(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(defaultValue: 0.0) final double? proficiency,
          @JsonKey(name: 'iconPath') required final String iconPath}) =
      _$TechStackModelImpl;

  factory _TechStackModel.fromJson(Map<String, dynamic> json) =
      _$TechStackModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(defaultValue: 0.0)
  double? get proficiency;
  @override
  @JsonKey(name: 'iconPath')
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$TechStackModelImplCopyWith<_$TechStackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
