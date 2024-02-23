// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginReq _$LoginReqFromJson(Map<String, dynamic> json) {
  return _LoginReq.fromJson(json);
}

/// @nodoc
mixin _$LoginReq {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginReqCopyWith<LoginReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReqCopyWith<$Res> {
  factory $LoginReqCopyWith(LoginReq value, $Res Function(LoginReq) then) =
      _$LoginReqCopyWithImpl<$Res, LoginReq>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginReqCopyWithImpl<$Res, $Val extends LoginReq>
    implements $LoginReqCopyWith<$Res> {
  _$LoginReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginReqCopyWith<$Res> implements $LoginReqCopyWith<$Res> {
  factory _$$_LoginReqCopyWith(
          _$_LoginReq value, $Res Function(_$_LoginReq) then) =
      __$$_LoginReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginReqCopyWithImpl<$Res>
    extends _$LoginReqCopyWithImpl<$Res, _$_LoginReq>
    implements _$$_LoginReqCopyWith<$Res> {
  __$$_LoginReqCopyWithImpl(
      _$_LoginReq _value, $Res Function(_$_LoginReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_LoginReq(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginReq implements _LoginReq {
  _$_LoginReq({required this.username, required this.password});

  factory _$_LoginReq.fromJson(Map<String, dynamic> json) =>
      _$$_LoginReqFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginReq(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginReq &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginReqCopyWith<_$_LoginReq> get copyWith =>
      __$$_LoginReqCopyWithImpl<_$_LoginReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginReqToJson(
      this,
    );
  }
}

abstract class _LoginReq implements LoginReq {
  factory _LoginReq(
      {required final String username,
      required final String password}) = _$_LoginReq;

  factory _LoginReq.fromJson(Map<String, dynamic> json) = _$_LoginReq.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginReqCopyWith<_$_LoginReq> get copyWith =>
      throw _privateConstructorUsedError;
}
