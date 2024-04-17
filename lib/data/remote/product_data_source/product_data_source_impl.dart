import 'package:news_app/data/model/product_model.dart';
import 'package:news_app/service/api_endpoints.dart';
import 'package:news_app/service/base_api_service.dart';
import 'package:news_app/service/net_util.dart';

import '../../../helper/app_config.dart';
import 'product_data_source.dart';

class ProductDataSourceImpl extends BaseApiService
    implements ProductDataSource {
  NetworkUtil net = NetworkUtil();

  Future<List<ProductModel>> getProduct(String param) async {
    try {
      final response = await net.getDio(
        AppConfig.shared.fakeStoreUrl +
            ApiEndPoints.product +
            ApiEndPoints.productCategory +
            param,
        headers: _headers,
        param: {},
      );
      final List<dynamic> jsonData = response as List<dynamic>;
      return jsonData.map((data) => ProductModel.fromJson(data)).toList();
    } catch (e) {
      throw ('Failed to fetch product: $e');
    }
  }

  Map<String, String> get _headers => {
        'Connection': 'keep-alive',
        'Accept-Encoding': 'gzip,deflate,br',
        'Accept': '*/*',
      };
}
