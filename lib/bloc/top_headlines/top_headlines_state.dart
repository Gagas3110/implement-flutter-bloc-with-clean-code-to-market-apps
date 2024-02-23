import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/login.dart';
import 'package:news_app/data/model/top_headlines_models.dart';

part 'top_headlines_state.freezed.dart';

@freezed
abstract class HeadlinesState with _$HeadlinesState {
  const factory HeadlinesState.headlinesInitial() = HeadlinesInitial;
  const factory HeadlinesState.setupHeadlinesProgress() = SetupHeadlinesProgress;
  const factory HeadlinesState.setupHeadlinesComplete({
    required TopHeadlinesModels res,
    required TopHeadlinesModels rest,
    required Login log,
  }) = SetupHeadlinesComplete;
  const factory HeadlinesState.setupArticleProgress() = SetupArticleProgress;
  const factory HeadlinesState.setupArticleComplete({
    required TopHeadlinesModels rest,
  }) = SetupArticleComplete;
  const factory HeadlinesState.headlinesLoadMoreProgress() = HeadlinesLoadMoreProgress;
  const factory HeadlinesState.headlinesLoadMoreComplete({
    required TopHeadlinesModels res,
  }) = HeadlinesLoadMoreComplete;
  const factory HeadlinesState.headlinesFailedShow(String msg) = HeadlinesFailedShow;
  const factory HeadlinesState.logoutLoading() = LogoutLoading;
  const factory HeadlinesState.homeLogout() = HomeLogout;
}
