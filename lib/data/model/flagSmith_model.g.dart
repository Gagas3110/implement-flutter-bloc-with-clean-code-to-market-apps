// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flagSmith_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feature _$$_FeatureFromJson(Map<String, dynamic> json) => _$_Feature(
      feature: FeatureDetail.fromJson(json['feature'] as Map<String, dynamic>),
      enabled: json['enabled'] as bool,
      featureStateValue: json['featureStateValue'],
    );

Map<String, dynamic> _$$_FeatureToJson(_$_Feature instance) =>
    <String, dynamic>{
      'feature': instance.feature,
      'enabled': instance.enabled,
      'featureStateValue': instance.featureStateValue,
    };

_$_FeatureDetail _$$_FeatureDetailFromJson(Map<String, dynamic> json) =>
    _$_FeatureDetail(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_FeatureDetailToJson(_$_FeatureDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };

_$_Flags _$$_FlagsFromJson(Map<String, dynamic> json) => _$_Flags(
      flags: (json['flags'] as List<dynamic>?)
          ?.map((e) => FeatureState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FlagsToJson(_$_Flags instance) => <String, dynamic>{
      'flags': instance.flags,
    };

_$_FeatureState _$$_FeatureStateFromJson(Map<String, dynamic> json) =>
    _$_FeatureState(
      enabled: json['enabled'] as bool?,
      featureStateValue: json['featureStateValue'],
      feature: json['feature'] == null
          ? null
          : Feature.fromJson(json['feature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeatureStateToJson(_$_FeatureState instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'featureStateValue': instance.featureStateValue,
      'feature': instance.feature,
    };

_$_Trait _$$_TraitFromJson(Map<String, dynamic> json) => _$_Trait(
      traitKey: json['traitKey'] as String?,
      traitValue: json['traitValue'] as String?,
    );

Map<String, dynamic> _$$_TraitToJson(_$_Trait instance) => <String, dynamic>{
      'traitKey': instance.traitKey,
      'traitValue': instance.traitValue,
    };

_$_IdentitiesResponse _$$_IdentitiesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_IdentitiesResponse(
      flags: (json['flags'] as List<dynamic>?)
          ?.map((e) => Flags.fromJson(e as Map<String, dynamic>))
          .toList(),
      traits: (json['traits'] as List<dynamic>?)
          ?.map((e) => Trait.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IdentitiesResponseToJson(
        _$_IdentitiesResponse instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'traits': instance.traits,
    };

_$_IdentitiesResponsePost _$$_IdentitiesResponsePostFromJson(
        Map<String, dynamic> json) =>
    _$_IdentitiesResponsePost(
      identifier: json['identifier'] as String?,
      flags: (json['flags'] as List<dynamic>?)
          ?.map((e) => Flags.fromJson(e as Map<String, dynamic>))
          .toList(),
      traits: (json['traits'] as List<dynamic>?)
          ?.map((e) => Trait.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IdentitiesResponsePostToJson(
        _$_IdentitiesResponsePost instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'flags': instance.flags,
      'traits': instance.traits,
    };
