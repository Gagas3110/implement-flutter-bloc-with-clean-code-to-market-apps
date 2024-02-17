import 'package:news_app/data/model/top_headlines_models.dart';
import 'package:news_app/data/remote/news_data_source/news_data_source.dart';
import 'package:news_app/service/api_endpoints.dart';
import 'package:news_app/service/base_api_service.dart';
import 'package:news_app/service/net_util.dart';

class NewsDataSourceImpl extends BaseApiService implements NewsDataSource {
  NetworkUtil net = NetworkUtil();

  Future<TopHeadlinesModels> getHeadlines() async {
    return await _fetchData(ApiEndPoints.TopHeadlines,
        queryParam: {'country': codeRegion, 'apiKey': apiKey});
  }

  Future<TopHeadlinesModels> getArticle() async {
    return await _fetchData(ApiEndPoints.Everything,
        queryParam: {'q': 'keyword', 'apiKey': apiKey});
  }

  Future<TopHeadlinesModels> _fetchData(String endPoint,
      {Map<String, dynamic>? queryParam}) async {
    try {
      final response = await net.getDio(baseUrl + endPoint,
          headers: _headers, param: queryParam ?? {});
      if (response["errMsg"] != null) throw (response["errMsg"].toString());
      return TopHeadlinesModels.fromJson(response);
    } catch (e) {
      throw ('Failed to fetch data: $e');
    }
  }

  Map<String, String> get _headers => {
        'Connection': 'keep-alive',
        'Accept-Encoding': 'gzip,deflate,br',
        'Accept': '*/*',
      };
}
