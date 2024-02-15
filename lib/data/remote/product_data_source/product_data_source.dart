import 'package:news_app/data/model/product_model.dart';

abstract class ProductDataSource {
  Future<List<ProductModel>> getProduct(String param);
}
