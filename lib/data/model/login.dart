import 'package:freezed_annotation/freezed_annotation.dart';
part 'login.freezed.dart';
part 'login.g.dart';
// @freezed
// class LoginReq {
//   String? username;
//   String? password;

//   LoginReq({this.username, this.password});

//   LoginReq.fromJson(Map<String, dynamic> json) {
//     username = json['username'];
//     password = json['password'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['username'] = this.username;
//     data['password'] = this.password;
//     return data;
//   }
// }
@freezed
class LoginReq with _$LoginReq {
  factory LoginReq({
    required String username,
    required String password,
  }) = _LoginReq;

  factory LoginReq.fromJson(Map<String, dynamic> json) =>
      _$LoginReqFromJson(json);
}

class Login {
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String? token;

  //helper
  String? password;

  Login(
      {this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.image,
      this.token});

  Login.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['token'] = this.token;
    return data;
  }
}
