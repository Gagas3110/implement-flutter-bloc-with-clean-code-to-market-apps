import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.setupProductEvent() = SetupProductEvent;
  const factory ProductEvent.productLoadMore(int paging) = ProductLoadMore;
  const factory ProductEvent.doLogout() = DoLogout;
}
