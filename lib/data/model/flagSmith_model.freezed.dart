// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flagSmith_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  FeatureDetail get feature => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  dynamic get featureStateValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call({FeatureDetail feature, bool enabled, dynamic featureStateValue});

  $FeatureDetailCopyWith<$Res> get feature;
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feature = null,
    Object? enabled = null,
    Object? featureStateValue = freezed,
  }) {
    return _then(_value.copyWith(
      feature: null == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as FeatureDetail,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      featureStateValue: freezed == featureStateValue
          ? _value.featureStateValue
          : featureStateValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeatureDetailCopyWith<$Res> get feature {
    return $FeatureDetailCopyWith<$Res>(_value.feature, (value) {
      return _then(_value.copyWith(feature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeatureCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$_FeatureCopyWith(
          _$_Feature value, $Res Function(_$_Feature) then) =
      __$$_FeatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeatureDetail feature, bool enabled, dynamic featureStateValue});

  @override
  $FeatureDetailCopyWith<$Res> get feature;
}

/// @nodoc
class __$$_FeatureCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$_Feature>
    implements _$$_FeatureCopyWith<$Res> {
  __$$_FeatureCopyWithImpl(_$_Feature _value, $Res Function(_$_Feature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feature = null,
    Object? enabled = null,
    Object? featureStateValue = freezed,
  }) {
    return _then(_$_Feature(
      feature: null == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as FeatureDetail,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      featureStateValue: freezed == featureStateValue
          ? _value.featureStateValue
          : featureStateValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feature implements _Feature {
  const _$_Feature(
      {required this.feature,
      required this.enabled,
      required this.featureStateValue});

  factory _$_Feature.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureFromJson(json);

  @override
  final FeatureDetail feature;
  @override
  final bool enabled;
  @override
  final dynamic featureStateValue;

  @override
  String toString() {
    return 'Feature(feature: $feature, enabled: $enabled, featureStateValue: $featureStateValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feature &&
            (identical(other.feature, feature) || other.feature == feature) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other.featureStateValue, featureStateValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feature, enabled,
      const DeepCollectionEquality().hash(featureStateValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      __$$_FeatureCopyWithImpl<_$_Feature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureToJson(
      this,
    );
  }
}

abstract class _Feature implements Feature {
  const factory _Feature(
      {required final FeatureDetail feature,
      required final bool enabled,
      required final dynamic featureStateValue}) = _$_Feature;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$_Feature.fromJson;

  @override
  FeatureDetail get feature;
  @override
  bool get enabled;
  @override
  dynamic get featureStateValue;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      throw _privateConstructorUsedError;
}

FeatureDetail _$FeatureDetailFromJson(Map<String, dynamic> json) {
  return _FeatureDetail.fromJson(json);
}

/// @nodoc
mixin _$FeatureDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureDetailCopyWith<FeatureDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureDetailCopyWith<$Res> {
  factory $FeatureDetailCopyWith(
          FeatureDetail value, $Res Function(FeatureDetail) then) =
      _$FeatureDetailCopyWithImpl<$Res, FeatureDetail>;
  @useResult
  $Res call({int id, String name, String type});
}

/// @nodoc
class _$FeatureDetailCopyWithImpl<$Res, $Val extends FeatureDetail>
    implements $FeatureDetailCopyWith<$Res> {
  _$FeatureDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeatureDetailCopyWith<$Res>
    implements $FeatureDetailCopyWith<$Res> {
  factory _$$_FeatureDetailCopyWith(
          _$_FeatureDetail value, $Res Function(_$_FeatureDetail) then) =
      __$$_FeatureDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String type});
}

/// @nodoc
class __$$_FeatureDetailCopyWithImpl<$Res>
    extends _$FeatureDetailCopyWithImpl<$Res, _$_FeatureDetail>
    implements _$$_FeatureDetailCopyWith<$Res> {
  __$$_FeatureDetailCopyWithImpl(
      _$_FeatureDetail _value, $Res Function(_$_FeatureDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_FeatureDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeatureDetail implements _FeatureDetail {
  const _$_FeatureDetail(
      {required this.id, required this.name, required this.type});

  factory _$_FeatureDetail.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureDetailFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'FeatureDetail(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeatureDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureDetailCopyWith<_$_FeatureDetail> get copyWith =>
      __$$_FeatureDetailCopyWithImpl<_$_FeatureDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureDetailToJson(
      this,
    );
  }
}

abstract class _FeatureDetail implements FeatureDetail {
  const factory _FeatureDetail(
      {required final int id,
      required final String name,
      required final String type}) = _$_FeatureDetail;

  factory _FeatureDetail.fromJson(Map<String, dynamic> json) =
      _$_FeatureDetail.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureDetailCopyWith<_$_FeatureDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
mixin _$Flags {
  List<FeatureState>? get flags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res, Flags>;
  @useResult
  $Res call({List<FeatureState>? flags});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res, $Val extends Flags>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = freezed,
  }) {
    return _then(_value.copyWith(
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<FeatureState>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlagsCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$_FlagsCopyWith(_$_Flags value, $Res Function(_$_Flags) then) =
      __$$_FlagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FeatureState>? flags});
}

/// @nodoc
class __$$_FlagsCopyWithImpl<$Res> extends _$FlagsCopyWithImpl<$Res, _$_Flags>
    implements _$$_FlagsCopyWith<$Res> {
  __$$_FlagsCopyWithImpl(_$_Flags _value, $Res Function(_$_Flags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = freezed,
  }) {
    return _then(_$_Flags(
      flags: freezed == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<FeatureState>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flags implements _Flags {
  const _$_Flags({final List<FeatureState>? flags}) : _flags = flags;

  factory _$_Flags.fromJson(Map<String, dynamic> json) =>
      _$$_FlagsFromJson(json);

  final List<FeatureState>? _flags;
  @override
  List<FeatureState>? get flags {
    final value = _flags;
    if (value == null) return null;
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Flags(flags: $flags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flags &&
            const DeepCollectionEquality().equals(other._flags, _flags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_flags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlagsCopyWith<_$_Flags> get copyWith =>
      __$$_FlagsCopyWithImpl<_$_Flags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlagsToJson(
      this,
    );
  }
}

abstract class _Flags implements Flags {
  const factory _Flags({final List<FeatureState>? flags}) = _$_Flags;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$_Flags.fromJson;

  @override
  List<FeatureState>? get flags;
  @override
  @JsonKey(ignore: true)
  _$$_FlagsCopyWith<_$_Flags> get copyWith =>
      throw _privateConstructorUsedError;
}

FeatureState _$FeatureStateFromJson(Map<String, dynamic> json) {
  return _FeatureState.fromJson(json);
}

/// @nodoc
mixin _$FeatureState {
  bool? get enabled => throw _privateConstructorUsedError;
  dynamic get featureStateValue => throw _privateConstructorUsedError;
  Feature? get feature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureStateCopyWith<FeatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureStateCopyWith<$Res> {
  factory $FeatureStateCopyWith(
          FeatureState value, $Res Function(FeatureState) then) =
      _$FeatureStateCopyWithImpl<$Res, FeatureState>;
  @useResult
  $Res call({bool? enabled, dynamic featureStateValue, Feature? feature});

  $FeatureCopyWith<$Res>? get feature;
}

/// @nodoc
class _$FeatureStateCopyWithImpl<$Res, $Val extends FeatureState>
    implements $FeatureStateCopyWith<$Res> {
  _$FeatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? featureStateValue = freezed,
    Object? feature = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      featureStateValue: freezed == featureStateValue
          ? _value.featureStateValue
          : featureStateValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feature: freezed == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeatureCopyWith<$Res>? get feature {
    if (_value.feature == null) {
      return null;
    }

    return $FeatureCopyWith<$Res>(_value.feature!, (value) {
      return _then(_value.copyWith(feature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeatureStateCopyWith<$Res>
    implements $FeatureStateCopyWith<$Res> {
  factory _$$_FeatureStateCopyWith(
          _$_FeatureState value, $Res Function(_$_FeatureState) then) =
      __$$_FeatureStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enabled, dynamic featureStateValue, Feature? feature});

  @override
  $FeatureCopyWith<$Res>? get feature;
}

/// @nodoc
class __$$_FeatureStateCopyWithImpl<$Res>
    extends _$FeatureStateCopyWithImpl<$Res, _$_FeatureState>
    implements _$$_FeatureStateCopyWith<$Res> {
  __$$_FeatureStateCopyWithImpl(
      _$_FeatureState _value, $Res Function(_$_FeatureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? featureStateValue = freezed,
    Object? feature = freezed,
  }) {
    return _then(_$_FeatureState(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      featureStateValue: freezed == featureStateValue
          ? _value.featureStateValue
          : featureStateValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feature: freezed == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeatureState implements _FeatureState {
  const _$_FeatureState({this.enabled, this.featureStateValue, this.feature});

  factory _$_FeatureState.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureStateFromJson(json);

  @override
  final bool? enabled;
  @override
  final dynamic featureStateValue;
  @override
  final Feature? feature;

  @override
  String toString() {
    return 'FeatureState(enabled: $enabled, featureStateValue: $featureStateValue, feature: $feature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeatureState &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other.featureStateValue, featureStateValue) &&
            (identical(other.feature, feature) || other.feature == feature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enabled,
      const DeepCollectionEquality().hash(featureStateValue), feature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureStateCopyWith<_$_FeatureState> get copyWith =>
      __$$_FeatureStateCopyWithImpl<_$_FeatureState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureStateToJson(
      this,
    );
  }
}

abstract class _FeatureState implements FeatureState {
  const factory _FeatureState(
      {final bool? enabled,
      final dynamic featureStateValue,
      final Feature? feature}) = _$_FeatureState;

  factory _FeatureState.fromJson(Map<String, dynamic> json) =
      _$_FeatureState.fromJson;

  @override
  bool? get enabled;
  @override
  dynamic get featureStateValue;
  @override
  Feature? get feature;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureStateCopyWith<_$_FeatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

Trait _$TraitFromJson(Map<String, dynamic> json) {
  return _Trait.fromJson(json);
}

/// @nodoc
mixin _$Trait {
  String? get traitKey => throw _privateConstructorUsedError;
  String? get traitValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TraitCopyWith<Trait> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraitCopyWith<$Res> {
  factory $TraitCopyWith(Trait value, $Res Function(Trait) then) =
      _$TraitCopyWithImpl<$Res, Trait>;
  @useResult
  $Res call({String? traitKey, String? traitValue});
}

/// @nodoc
class _$TraitCopyWithImpl<$Res, $Val extends Trait>
    implements $TraitCopyWith<$Res> {
  _$TraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traitKey = freezed,
    Object? traitValue = freezed,
  }) {
    return _then(_value.copyWith(
      traitKey: freezed == traitKey
          ? _value.traitKey
          : traitKey // ignore: cast_nullable_to_non_nullable
              as String?,
      traitValue: freezed == traitValue
          ? _value.traitValue
          : traitValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TraitCopyWith<$Res> implements $TraitCopyWith<$Res> {
  factory _$$_TraitCopyWith(_$_Trait value, $Res Function(_$_Trait) then) =
      __$$_TraitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? traitKey, String? traitValue});
}

/// @nodoc
class __$$_TraitCopyWithImpl<$Res> extends _$TraitCopyWithImpl<$Res, _$_Trait>
    implements _$$_TraitCopyWith<$Res> {
  __$$_TraitCopyWithImpl(_$_Trait _value, $Res Function(_$_Trait) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traitKey = freezed,
    Object? traitValue = freezed,
  }) {
    return _then(_$_Trait(
      traitKey: freezed == traitKey
          ? _value.traitKey
          : traitKey // ignore: cast_nullable_to_non_nullable
              as String?,
      traitValue: freezed == traitValue
          ? _value.traitValue
          : traitValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trait implements _Trait {
  const _$_Trait({this.traitKey, this.traitValue});

  factory _$_Trait.fromJson(Map<String, dynamic> json) =>
      _$$_TraitFromJson(json);

  @override
  final String? traitKey;
  @override
  final String? traitValue;

  @override
  String toString() {
    return 'Trait(traitKey: $traitKey, traitValue: $traitValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trait &&
            (identical(other.traitKey, traitKey) ||
                other.traitKey == traitKey) &&
            (identical(other.traitValue, traitValue) ||
                other.traitValue == traitValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, traitKey, traitValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TraitCopyWith<_$_Trait> get copyWith =>
      __$$_TraitCopyWithImpl<_$_Trait>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TraitToJson(
      this,
    );
  }
}

abstract class _Trait implements Trait {
  const factory _Trait({final String? traitKey, final String? traitValue}) =
      _$_Trait;

  factory _Trait.fromJson(Map<String, dynamic> json) = _$_Trait.fromJson;

  @override
  String? get traitKey;
  @override
  String? get traitValue;
  @override
  @JsonKey(ignore: true)
  _$$_TraitCopyWith<_$_Trait> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentitiesResponse _$IdentitiesResponseFromJson(Map<String, dynamic> json) {
  return _IdentitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$IdentitiesResponse {
  List<Flags>? get flags => throw _privateConstructorUsedError;
  List<Trait>? get traits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentitiesResponseCopyWith<IdentitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentitiesResponseCopyWith<$Res> {
  factory $IdentitiesResponseCopyWith(
          IdentitiesResponse value, $Res Function(IdentitiesResponse) then) =
      _$IdentitiesResponseCopyWithImpl<$Res, IdentitiesResponse>;
  @useResult
  $Res call({List<Flags>? flags, List<Trait>? traits});
}

/// @nodoc
class _$IdentitiesResponseCopyWithImpl<$Res, $Val extends IdentitiesResponse>
    implements $IdentitiesResponseCopyWith<$Res> {
  _$IdentitiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = freezed,
    Object? traits = freezed,
  }) {
    return _then(_value.copyWith(
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<Flags>?,
      traits: freezed == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdentitiesResponseCopyWith<$Res>
    implements $IdentitiesResponseCopyWith<$Res> {
  factory _$$_IdentitiesResponseCopyWith(_$_IdentitiesResponse value,
          $Res Function(_$_IdentitiesResponse) then) =
      __$$_IdentitiesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Flags>? flags, List<Trait>? traits});
}

/// @nodoc
class __$$_IdentitiesResponseCopyWithImpl<$Res>
    extends _$IdentitiesResponseCopyWithImpl<$Res, _$_IdentitiesResponse>
    implements _$$_IdentitiesResponseCopyWith<$Res> {
  __$$_IdentitiesResponseCopyWithImpl(
      _$_IdentitiesResponse _value, $Res Function(_$_IdentitiesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = freezed,
    Object? traits = freezed,
  }) {
    return _then(_$_IdentitiesResponse(
      flags: freezed == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<Flags>?,
      traits: freezed == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentitiesResponse implements _IdentitiesResponse {
  const _$_IdentitiesResponse(
      {final List<Flags>? flags, final List<Trait>? traits})
      : _flags = flags,
        _traits = traits;

  factory _$_IdentitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IdentitiesResponseFromJson(json);

  final List<Flags>? _flags;
  @override
  List<Flags>? get flags {
    final value = _flags;
    if (value == null) return null;
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Trait>? _traits;
  @override
  List<Trait>? get traits {
    final value = _traits;
    if (value == null) return null;
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IdentitiesResponse(flags: $flags, traits: $traits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdentitiesResponse &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            const DeepCollectionEquality().equals(other._traits, _traits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flags),
      const DeepCollectionEquality().hash(_traits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentitiesResponseCopyWith<_$_IdentitiesResponse> get copyWith =>
      __$$_IdentitiesResponseCopyWithImpl<_$_IdentitiesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentitiesResponseToJson(
      this,
    );
  }
}

abstract class _IdentitiesResponse implements IdentitiesResponse {
  const factory _IdentitiesResponse(
      {final List<Flags>? flags,
      final List<Trait>? traits}) = _$_IdentitiesResponse;

  factory _IdentitiesResponse.fromJson(Map<String, dynamic> json) =
      _$_IdentitiesResponse.fromJson;

  @override
  List<Flags>? get flags;
  @override
  List<Trait>? get traits;
  @override
  @JsonKey(ignore: true)
  _$$_IdentitiesResponseCopyWith<_$_IdentitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentitiesResponsePost _$IdentitiesResponsePostFromJson(
    Map<String, dynamic> json) {
  return _IdentitiesResponsePost.fromJson(json);
}

/// @nodoc
mixin _$IdentitiesResponsePost {
  String? get identifier => throw _privateConstructorUsedError;
  List<Flags>? get flags => throw _privateConstructorUsedError;
  List<Trait>? get traits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentitiesResponsePostCopyWith<IdentitiesResponsePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentitiesResponsePostCopyWith<$Res> {
  factory $IdentitiesResponsePostCopyWith(IdentitiesResponsePost value,
          $Res Function(IdentitiesResponsePost) then) =
      _$IdentitiesResponsePostCopyWithImpl<$Res, IdentitiesResponsePost>;
  @useResult
  $Res call({String? identifier, List<Flags>? flags, List<Trait>? traits});
}

/// @nodoc
class _$IdentitiesResponsePostCopyWithImpl<$Res,
        $Val extends IdentitiesResponsePost>
    implements $IdentitiesResponsePostCopyWith<$Res> {
  _$IdentitiesResponsePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? flags = freezed,
    Object? traits = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<Flags>?,
      traits: freezed == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdentitiesResponsePostCopyWith<$Res>
    implements $IdentitiesResponsePostCopyWith<$Res> {
  factory _$$_IdentitiesResponsePostCopyWith(_$_IdentitiesResponsePost value,
          $Res Function(_$_IdentitiesResponsePost) then) =
      __$$_IdentitiesResponsePostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identifier, List<Flags>? flags, List<Trait>? traits});
}

/// @nodoc
class __$$_IdentitiesResponsePostCopyWithImpl<$Res>
    extends _$IdentitiesResponsePostCopyWithImpl<$Res,
        _$_IdentitiesResponsePost>
    implements _$$_IdentitiesResponsePostCopyWith<$Res> {
  __$$_IdentitiesResponsePostCopyWithImpl(_$_IdentitiesResponsePost _value,
      $Res Function(_$_IdentitiesResponsePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? flags = freezed,
    Object? traits = freezed,
  }) {
    return _then(_$_IdentitiesResponsePost(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<Flags>?,
      traits: freezed == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentitiesResponsePost implements _IdentitiesResponsePost {
  const _$_IdentitiesResponsePost(
      {this.identifier, final List<Flags>? flags, final List<Trait>? traits})
      : _flags = flags,
        _traits = traits;

  factory _$_IdentitiesResponsePost.fromJson(Map<String, dynamic> json) =>
      _$$_IdentitiesResponsePostFromJson(json);

  @override
  final String? identifier;
  final List<Flags>? _flags;
  @override
  List<Flags>? get flags {
    final value = _flags;
    if (value == null) return null;
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Trait>? _traits;
  @override
  List<Trait>? get traits {
    final value = _traits;
    if (value == null) return null;
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IdentitiesResponsePost(identifier: $identifier, flags: $flags, traits: $traits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdentitiesResponsePost &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            const DeepCollectionEquality().equals(other._traits, _traits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      identifier,
      const DeepCollectionEquality().hash(_flags),
      const DeepCollectionEquality().hash(_traits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentitiesResponsePostCopyWith<_$_IdentitiesResponsePost> get copyWith =>
      __$$_IdentitiesResponsePostCopyWithImpl<_$_IdentitiesResponsePost>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentitiesResponsePostToJson(
      this,
    );
  }
}

abstract class _IdentitiesResponsePost implements IdentitiesResponsePost {
  const factory _IdentitiesResponsePost(
      {final String? identifier,
      final List<Flags>? flags,
      final List<Trait>? traits}) = _$_IdentitiesResponsePost;

  factory _IdentitiesResponsePost.fromJson(Map<String, dynamic> json) =
      _$_IdentitiesResponsePost.fromJson;

  @override
  String? get identifier;
  @override
  List<Flags>? get flags;
  @override
  List<Trait>? get traits;
  @override
  @JsonKey(ignore: true)
  _$$_IdentitiesResponsePostCopyWith<_$_IdentitiesResponsePost> get copyWith =>
      throw _privateConstructorUsedError;
}
