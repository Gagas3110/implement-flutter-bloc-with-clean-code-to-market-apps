import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_headlines_event.freezed.dart';

@freezed
abstract class HeadlinesEvent with _$HeadlinesEvent {
  const factory HeadlinesEvent.setupHeadlinesEvent() = SetupHeadlinesEvent;
  const factory HeadlinesEvent.setupArticleEvent() = SetupArticleEvent;
  const factory HeadlinesEvent.headlinesLoadMore(int paging) = HeadlinesLoadMore;
  const factory HeadlinesEvent.doLogout() = DoLogout;
}
