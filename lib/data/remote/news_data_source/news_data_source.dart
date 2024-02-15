import '../../model/top_headlines_models.dart';

abstract class NewsDataSource {
  Future<TopHeadlinesModels> getHeadlines();
  Future<TopHeadlinesModels> getArticle();
}
