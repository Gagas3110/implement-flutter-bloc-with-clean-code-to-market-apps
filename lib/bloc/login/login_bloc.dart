import 'package:bloc/bloc.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/bloc/login/login_event.dart';
import 'package:news_app/bloc/login/login_state.dart';

import '../../repository/auth/auth_repo_impl.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SharedDB db = SharedDB();
  final AuthRepoImpl auth = AuthRepoImpl();

  LoginBloc() : super(InitState()) {
    on<LoginEvent>(_mapEventToState);
  }

  void _mapEventToState(LoginEvent event, Emitter<LoginState> emit) async {
    try {
      if (event is CheckLogin) {
        await _setupLogin(emit);
      } else if (event is LoginSubmitted) {
        await _submitLogin(event, emit);
      }
    } catch (e) {
      emit(LoginFailed(error: 'Error' + e.toString()));
    }
  }

  Future<void> _setupLogin(Emitter<LoginState> emit) async {
    final login = await db.getUser();
    if (login.token != null) {
      emit(IsLoginState());
    } else {
      emit(NotLoginState());
    }
  }

  Future<void> _submitLogin(
      LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(LoginInProgress());
    final result = await auth.getLoginData(event.body);
    result.username = event.body.username;
    result.password = event.body.password;

    await db.saveUser(result);
    emit(LoginSuccess());
  }
}
