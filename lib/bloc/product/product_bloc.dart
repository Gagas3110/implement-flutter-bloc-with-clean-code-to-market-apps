import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/helper/constant.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/service/rest_api.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  RestApi api = RestApi();
  SharedDB db = SharedDB();
  Login? log;

  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) async {
      try {
        log = await db.getUser();
        emit(SetupProductProgress());
        if (event is SetupProductEvent) {
          var jewelry = await getData(ApiConstants.jewelery);
          var electronics = await getData(ApiConstants.electronics);
          var mensClothing = await getData(ApiConstants.mensClothing);
          var womansClothing = await getData(ApiConstants.womensClothing);
          emit(SetupProductComplete(
              mensClothing: mensClothing,
              womansClothing: womansClothing,
              electronics: electronics,
              log: log!,
              jewelry: jewelry));
        } else if (event is DoLogout) {
          emit(LogoutLoading());
          await db.dbClear();
          emit(HomeLogout());
        }
      } catch (e) {
        emit(ProductFailedShow(e.toString()));
      }
    });
  }

  getData(String param) async {
    var res;
    res = await api.getProduct(param);
    return res;
  }
}
