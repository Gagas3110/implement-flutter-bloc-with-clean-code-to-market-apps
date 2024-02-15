
import '../../data/model/top_headlines_models.dart';

abstract class NewsRepo {
  Future<TopHeadlinesModels> getAllDataHeadline();
  Future<TopHeadlinesModels> getAllDataArticle();

}
