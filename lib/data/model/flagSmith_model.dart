import 'package:freezed_annotation/freezed_annotation.dart';

part 'flagSmith_model.freezed.dart';
part 'flagSmith_model.g.dart';

@freezed
class Feature with _$Feature {
  const factory Feature({
    required FeatureDetail feature,
    required bool enabled,
    required dynamic featureStateValue,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
}

@freezed
class FeatureDetail with _$FeatureDetail {
  const factory FeatureDetail({
    required int id,
    required String name,
    required String type,
  }) = _FeatureDetail;

  factory FeatureDetail.fromJson(Map<String, dynamic> json) =>
      _$FeatureDetailFromJson(json);
}

@freezed
class Flags with _$Flags {
  const factory Flags({
    List<FeatureState>? flags,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}

@freezed
class FeatureState with _$FeatureState {
  const factory FeatureState({
    bool? enabled,
    dynamic featureStateValue,
    Feature? feature,
  }) = _FeatureState;

  factory FeatureState.fromJson(Map<String, dynamic> json) =>
      _$FeatureStateFromJson(json);
}

@freezed
class Trait with _$Trait {
  const factory Trait({
    String? traitKey,
    String? traitValue,
  }) = _Trait;

  factory Trait.fromJson(Map<String, dynamic> json) => _$TraitFromJson(json);
}

@freezed
class IdentitiesResponse with _$IdentitiesResponse {
  const factory IdentitiesResponse({
    List<Flags>? flags,
    List<Trait>? traits,
  }) = _IdentitiesResponse;

  factory IdentitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$IdentitiesResponseFromJson(json);
}

@freezed
class IdentitiesResponsePost with _$IdentitiesResponsePost {
  const factory IdentitiesResponsePost({
    String? identifier,
    List<Flags>? flags,
    List<Trait>? traits,
  }) = _IdentitiesResponsePost;

  factory IdentitiesResponsePost.fromJson(Map<String, dynamic> json) =>
      _$IdentitiesResponsePostFromJson(json);
}
