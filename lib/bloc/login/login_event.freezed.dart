// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReq body) loginSubmitted,
    required TResult Function() checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReq body)? loginSubmitted,
    TResult? Function()? checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReq body)? loginSubmitted,
    TResult Function()? checkLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(CheckLogin value) checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(CheckLogin value)? checkLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(CheckLogin value)? checkLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSubmittedCopyWith<$Res> {
  factory _$$LoginSubmittedCopyWith(
          _$LoginSubmitted value, $Res Function(_$LoginSubmitted) then) =
      __$$LoginSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginReq body});

  $LoginReqCopyWith<$Res> get body;
}

/// @nodoc
class __$$LoginSubmittedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSubmitted>
    implements _$$LoginSubmittedCopyWith<$Res> {
  __$$LoginSubmittedCopyWithImpl(
      _$LoginSubmitted _value, $Res Function(_$LoginSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$LoginSubmitted(
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LoginReq,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginReqCopyWith<$Res> get body {
    return $LoginReqCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc

class _$LoginSubmitted implements LoginSubmitted {
  const _$LoginSubmitted(this.body);

  @override
  final LoginReq body;

  @override
  String toString() {
    return 'LoginEvent.loginSubmitted(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSubmitted &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSubmittedCopyWith<_$LoginSubmitted> get copyWith =>
      __$$LoginSubmittedCopyWithImpl<_$LoginSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReq body) loginSubmitted,
    required TResult Function() checkLogin,
  }) {
    return loginSubmitted(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReq body)? loginSubmitted,
    TResult? Function()? checkLogin,
  }) {
    return loginSubmitted?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReq body)? loginSubmitted,
    TResult Function()? checkLogin,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(CheckLogin value) checkLogin,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(CheckLogin value)? checkLogin,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(CheckLogin value)? checkLogin,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitted implements LoginEvent {
  const factory LoginSubmitted(final LoginReq body) = _$LoginSubmitted;

  LoginReq get body;
  @JsonKey(ignore: true)
  _$$LoginSubmittedCopyWith<_$LoginSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckLoginCopyWith<$Res> {
  factory _$$CheckLoginCopyWith(
          _$CheckLogin value, $Res Function(_$CheckLogin) then) =
      __$$CheckLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CheckLogin>
    implements _$$CheckLoginCopyWith<$Res> {
  __$$CheckLoginCopyWithImpl(
      _$CheckLogin _value, $Res Function(_$CheckLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLogin implements CheckLogin {
  const _$CheckLogin();

  @override
  String toString() {
    return 'LoginEvent.checkLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReq body) loginSubmitted,
    required TResult Function() checkLogin,
  }) {
    return checkLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReq body)? loginSubmitted,
    TResult? Function()? checkLogin,
  }) {
    return checkLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReq body)? loginSubmitted,
    TResult Function()? checkLogin,
    required TResult orElse(),
  }) {
    if (checkLogin != null) {
      return checkLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(CheckLogin value) checkLogin,
  }) {
    return checkLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(CheckLogin value)? checkLogin,
  }) {
    return checkLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(CheckLogin value)? checkLogin,
    required TResult orElse(),
  }) {
    if (checkLogin != null) {
      return checkLogin(this);
    }
    return orElse();
  }
}

abstract class CheckLogin implements LoginEvent {
  const factory CheckLogin() = _$CheckLogin;
}
