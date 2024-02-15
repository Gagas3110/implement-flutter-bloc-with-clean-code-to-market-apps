


import 'package:news_app/data/model/login.dart';

class LoginEvent {}

class LoginSubmitted extends LoginEvent {
  final LoginReq body;
  

  LoginSubmitted(this.body);
}

class CheckLogin extends LoginEvent {}
