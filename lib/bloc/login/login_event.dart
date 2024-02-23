import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/login.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginSubmitted(LoginReq body) = LoginSubmitted;
  const factory LoginEvent.checkLogin() = CheckLogin;
}
