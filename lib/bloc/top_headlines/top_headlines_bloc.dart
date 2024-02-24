import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/data/model/login.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_event.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_state.dart';

import '../../repository/news/news_repo_impl.dart';

class HeadlinesBloc extends Bloc<HeadlinesEvent, HeadlinesState> {
  SharedDB db = SharedDB();
  Login? log;
  final api = NewsRepoImp();

  HeadlinesBloc() : super(HeadlinesInitial()) {
    on<HeadlinesEvent>((event, emit) async {
      try {
        log = await db.getUser();
        emit(SetupHeadlinesProgress());
        await event.when(
          setupHeadlinesEvent: () async {
            var result = await api.getAllDataHeadline();
            var model = await api.getAllDataArticle();
            emit(
              SetupHeadlinesComplete(
                res: result,
                rest: model,
                log: log!,
              ),
            );
          },
          doLogout: () async {
            emit(LogoutLoading());
            await db.dbClear();
            emit(HomeLogout());
          },
          headlinesLoadMore: (int paging) {},
          setupArticleEvent: () {},
        );
      } catch (e) {
        emit(HeadlinesFailedShow(e.toString()));
      }
    });
  }
}
