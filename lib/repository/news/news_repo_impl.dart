import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';
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
      Dynatrace()
          .reportCrash('FormatException', 'Get Headlines Error', e.toString());
      rethrow;
    }
  }

  @override
  Future<TopHeadlinesModels> getAllDataHeadline() async {
    try {
      var model = await api.getArticle();
      return model;
    } catch (e) {
      Dynatrace()
          .reportCrash('FormatException', 'Get Article Error', e.toString());
      rethrow;
    }
  }
}
