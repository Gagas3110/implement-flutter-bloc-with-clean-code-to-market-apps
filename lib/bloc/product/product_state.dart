import 'package:news_app/data/model/login.dart';
import '../../data/model/product_model.dart';

class ProductState {}

class ProductInitial extends ProductState {}

class SetupProductProgress extends ProductState {}

class SetupProductComplete extends ProductState {
  final List<ProductModel> jewelry;
  final List<ProductModel> electronics;
  final List<ProductModel> mensClothing;
  final List<ProductModel> womansClothing;
  final Login log;

  SetupProductComplete(
      {required this.mensClothing,
      required this.womansClothing,
      required this.log,
      required this.jewelry,
      required this.electronics});
}

class ProductFailedShow extends ProductState {
  String msg;

  ProductFailedShow(this.msg);
}

class LogoutLoading extends ProductState {}

class HomeLogout extends ProductState {}
