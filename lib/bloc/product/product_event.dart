class ProductEvent {}

class SetupProductEvent extends ProductEvent {}

class ProductLoadMore extends ProductEvent {
  final int paging;

  ProductLoadMore(this.paging);
}

class DoLogout extends ProductEvent {}
