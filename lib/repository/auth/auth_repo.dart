import '../../data/model/login.dart';

abstract class AuthRepo {
  Future<Login> getLoginData(LoginReq req);
}
