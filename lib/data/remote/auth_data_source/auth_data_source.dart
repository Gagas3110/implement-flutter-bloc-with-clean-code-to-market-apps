import 'package:news_app/data/model/login.dart';

abstract class AuthDataSource {
  Future<Login> login(Map<String, dynamic> body);
}
