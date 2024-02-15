import 'package:news_app/data/model/login.dart';
import 'package:news_app/data/model/top_headlines_models.dart';

class HeadlinesState {}

class HeadlinesInitial extends HeadlinesState {}

class SetupHeadlinesProgress extends HeadlinesState {}

class SetupHeadlinesComplete extends HeadlinesState {
  final TopHeadlinesModels res;
  final TopHeadlinesModels rest;
  final Login log;

  SetupHeadlinesComplete(this.res, this.rest, this.log);
}

class SetupArticleProgress extends HeadlinesState {}

class SetupArticleComplete extends HeadlinesState {
  final TopHeadlinesModels rest;

  SetupArticleComplete(this.rest);
}

class HeadlinesLoadMoreProgress extends HeadlinesState {}

class HeadlinesLoadMoreComplete extends HeadlinesState {
  final TopHeadlinesModels res;

  HeadlinesLoadMoreComplete(this.res);
}

class HeadlinesFailedShow extends HeadlinesState {
  String msg;

  HeadlinesFailedShow(this.msg);
}

class LogoutLoading extends HeadlinesState {}

class HomeLogout extends HeadlinesState {}
