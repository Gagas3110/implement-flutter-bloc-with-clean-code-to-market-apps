import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:news_app/service/rest_api.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_event.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_state.dart';

class HeadlinesBloc extends Bloc<HeadlinesEvent, HeadlinesState> {
  TopHeadlinesModels result = TopHeadlinesModels();
  TopHeadlinesModels model = TopHeadlinesModels();
  RestApi api = RestApi();
  SharedDB db = SharedDB();
  Login? log;

  HeadlinesBloc() : super(HeadlinesInitial()) {
    on<HeadlinesEvent>((event, emit) async {
      try {
        log = await db.getUser();
        emit(SetupHeadlinesProgress());
        if (event is SetupHeadlinesEvent) {
          result = await searchData();
          model = await searchDataArticle();

          emit(SetupHeadlinesComplete(result, model, log!));
        } else if (event is DoLogout) {
          emit(LogoutLoading());

          await db.dbClear();
          emit(HomeLogout());
        }
      } catch (e) {
        emit(HeadlinesFailedShow(e.toString()));
      }
    });
  }

  searchData() async {
    TopHeadlinesModels result1 = TopHeadlinesModels();
    result1 = await api.getHeadlines();

    return result1;
  }

  searchDataArticle() async {
    TopHeadlinesModels result1 = TopHeadlinesModels();
    result1 = await api.getArticle();

    return result1;
  }
}
