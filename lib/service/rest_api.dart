import 'dart:convert';

import 'package:news_app/helper/constant.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:news_app/service/api_url.dart';
import 'package:news_app/service/net_util.dart';

class RestApi extends ApiUrl {
  NetworkUtil net = NetworkUtil();

  Future<TopHeadlinesModels> getHeadlines() {
    return net.getDio(baseUrl + ApiConstants.TopHeadlines, headers: {
      'Connection': 'keep-alive',
      'Accept-Encoding': 'gzip,deflate,br',
      'Accept': '*/*'
    }, param: {
      'country': ApiCodeRegion.CodeRegion,
      'apiKey': ApiKeyConstants.ApiKey,
    }).then(
      (dynamic res) {
        print(res);
        if (res["errMsg"] != null) throw (res["errMsg"].toString());
        return TopHeadlinesModels.fromJson(res);
      },
    );
  }

  Future<TopHeadlinesModels> getArticle() {
    return net.getDio(baseUrl + ApiConstants.Everything, headers: {
      'Connection': 'keep-alive',
      'Accept-Encoding': 'gzip,deflate,br',
      'Accept': '*/*'
    }, param: {
      'q': 'keyword',
      'apiKey': ApiKeyConstants.ApiKey,
    }).then(
      (dynamic res) {
        print(res);
        if (res["errMsg"] != null) throw (res["errMsg"].toString());
        return TopHeadlinesModels.fromJson(res);
      },
    );
  }

   Future<Login> login(Map<String, dynamic> body) {
    return net
        .postDio(dummyUrl,
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            },
            body: body,
            encoding: Encoding.getByName('utf-8'),
            param: {})
        .then(
      (dynamic res) {
        print(res);
        if (res["errMsg"] != null) throw (res["errMsg"].toString());
        return Login.fromJson(res);
      },
    );
  }

}
