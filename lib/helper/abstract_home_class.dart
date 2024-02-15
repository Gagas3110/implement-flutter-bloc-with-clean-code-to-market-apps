import '../data/model/login.dart';
import '../data/model/product_model.dart';
import '../data/model/top_headlines_models.dart';

abstract class AbstractHomeClass {
  List<ProductModel> jewelery = [];
  List<ProductModel> electronics = [];
  List<ProductModel> mensClothing = [];
  List<ProductModel> womansClothing = [];
  TopHeadlinesModels? newsModel;
  TopHeadlinesModels? articMod;
  ProductModel prod = ProductModel();
  List<Articles> listArticle = [];
  Login logs = Login();
  String? image;
  List<String> items = [];
  int current = 0;
  final mockData = TopHeadlinesModels();
}
