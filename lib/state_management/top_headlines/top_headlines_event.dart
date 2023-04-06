class HeadlinesEvent {}

class SetupHeadlinesEvent extends HeadlinesEvent {}

class SetupArticleEvent extends HeadlinesEvent {}

class HeadlinesLoadMore extends HeadlinesEvent {
  final int paging;

  HeadlinesLoadMore(this.paging);
}

class DoLogout extends HeadlinesEvent {}