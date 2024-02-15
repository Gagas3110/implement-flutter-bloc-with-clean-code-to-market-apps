import 'package:bloc/bloc.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/data/model/login.dart';
import 'package:news_app/bloc/login/login_event.dart';
import 'package:news_app/bloc/login/login_state.dart';

import '../../repository/auth/auth_repo_impl.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  SharedDB db = SharedDB();
  final auth = AuthRepoImpl();
  LoginBloc() : super(InitState()) {
    on<LoginEvent>((event, emit) async {
      try {
        if (event is CheckLogin) {
          Login login = await db.getUser();
          if (login.token != null) {
            emit(IsLoginState());
          } else {
            emit(NotLoginState());
          }
        } else if (event is LoginSubmitted) {
          emit(LoginInProgress());
          var result = await auth.getLoginData(event.body);
          result.username = event.body.username;
          result.password = event.body.password;

          await db.saveUser(result);
          emit(LoginSuccess());
        }
      } catch (e) {
        emit(LoginFailed(error: 'Error' + e.toString()));
      }
    });
  }
}
