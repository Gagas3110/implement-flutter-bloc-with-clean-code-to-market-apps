import 'package:news_app/data/model/login.dart';
import 'package:news_app/data/remote/auth_data_source/auth_data_source_impl.dart';
import 'auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  AuthDataSourceImpl auth = AuthDataSourceImpl();
  @override
  Future<Login> getLoginData(LoginReq req) async {
    try {
      var model = await auth.login(req.toJson());
      return model;
    } catch (e) {
      rethrow;
    }
  }
}
