import 'package:bloc/bloc.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/service/rest_api.dart';
import 'package:news_app/bloc/login/login_event.dart';
import 'package:news_app/bloc/login/login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  RestApi api = new RestApi();
  SharedDB db = new SharedDB();
 
  Login result = Login();
  LoginBloc() : super(InitState()) {
    on<LoginEvent>((event, emit) async {
      try {
        if (event is CheckLogin) {
          Login login = await db.getUser();
          if (login.token!= null) {
            emit(IsLoginState());
          } else {
            emit(NotLoginState());
          }
        } else if (event is LoginSubmitted) {
          emit(LoginInProgress());
          await login(event.body);

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
  dynamic login(LoginReq req) async {
    result = await api.login(req.toJson());
  }

  // dynamic logout(LoginReq req, String url) async {
  //   log = await api.logout(req.toJson(), url);
  // }
}
