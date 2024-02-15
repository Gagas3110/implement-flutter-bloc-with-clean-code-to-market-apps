import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/helper/shared_pref.dart';
import 'package:news_app/data/model/login.dart';
import 'package:news_app/repository/product/product_repo_impl.dart';
import '../../service/api_endpoints.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final api = ProductRepoImpl();
  SharedDB db = SharedDB();
  Login? log;

  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) async {
      try {
        log = await db.getUser();
        emit(SetupProductProgress());
        if (event is SetupProductEvent) {
          var jewelry = await api.getDataProduct(ApiEndPoints.jewelery);
          var electronics = await api.getDataProduct(ApiEndPoints.electronics);
          var mensClothing =
              await api.getDataProduct(ApiEndPoints.mensClothing);
          var womansClothing =
              await api.getDataProduct(ApiEndPoints.womensClothing);
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
}
