import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';
import 'package:news_app/data/remote/product_data_source/product_data_source_impl.dart';
import 'package:news_app/repository/product/product_repo.dart';

class ProductRepoImpl extends ProductRepo {
  final api = ProductDataSourceImpl();
  @override
  Future getDataProduct(String param) async {
    try {
      var res;
      res = await api.getProduct(param);
      return res;
    } catch (e) {
      Dynatrace()
          .reportCrash('FormatException', 'Get Product Error', e.toString());
      rethrow;
    }
  }
}
