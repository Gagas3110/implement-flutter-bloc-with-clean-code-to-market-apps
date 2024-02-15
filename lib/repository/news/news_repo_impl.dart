import 'package:news_app/data/model/top_headlines_models.dart';
import 'package:news_app/repository/news/news_repo.dart';

import '../../data/remote/news_data_source/news_data_source_impl.dart';

class NewsRepoImp extends NewsRepo {
  NewsDataSourceImpl api = NewsDataSourceImpl();
  @override
  Future<TopHeadlinesModels> getAllDataArticle() async {
    try {
      var model = await api.getHeadlines();
      return model;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TopHeadlinesModels> getAllDataHeadline() async {
    try {
      var model = await api.getArticle();
      return model;
    } catch (e) {
      rethrow;
    }
  }
}
