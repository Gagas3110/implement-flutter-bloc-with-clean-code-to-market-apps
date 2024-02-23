import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/login.dart';
import 'package:news_app/data/model/product_model.dart';

part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.productInitial() = ProductInitial;
  const factory ProductState.setupProductProgress() = SetupProductProgress;
  const factory ProductState.setupProductComplete({
    required List<ProductModel> jewelry,
    required List<ProductModel> electronics,
    required List<ProductModel> mensClothing,
    required List<ProductModel> womansClothing,
    required Login log,
  }) = SetupProductComplete;
  const factory ProductState.productFailedShow(String msg) = ProductFailedShow;
  const factory ProductState.logoutLoading() = LogoutLoading;
  const factory ProductState.homeLogout() = HomeLogout;
}
