import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.isLoginState() = IsLoginState;
  const factory LoginState.notLoginState() = NotLoginState;
  const factory LoginState.initState() = InitState;
  const factory LoginState.loginInProgress() = LoginInProgress;
  const factory LoginState.loginSuccess() = LoginSuccess;
  const factory LoginState.loginFailed({String? error}) = LoginFailed;
}

