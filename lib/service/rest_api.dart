import 'dart:convert';

import 'package:news_app/helper/constant.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:news_app/service/api_url.dart';
import 'package:news_app/service/net_util.dart';

import '../model/product_model.dart';

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

  // Future<List<ProductModel>> getProduct() {
  //   return net.getDio(
  //       fakeStoreUrl +
  //           ApiConstants.product +
  //           ApiConstants.productCategory +
  //           ApiConstants.jewelery,
  //       headers: {
  //         'Connection': 'keep-alive',
  //         'Accept-Encoding': 'gzip,deflate,br',
  //         'Accept': '*/*'
  //       },
  //       param: {}).then(
  //     (dynamic res) {
  //       final List<dynamic> jsonData = res;
  //       print(res);
  //       if (res["errMsg"] != null) throw (res["errMsg"].toString());
  //       return jsonData.map((data) => ProductModel.fromJson(data)).toList();
  //     },
  //   );
  // }

  Future<List<ProductModel>> getProduct(String param) {
    return net.getDio(
      fakeStoreUrl +
          ApiConstants.product +
          ApiConstants.productCategory +
          param,
      headers: {
        'Connection': 'keep-alive',
        'Accept-Encoding': 'gzip,deflate,br',
        'Accept': '*/*'
      },
      param: {},
    ).then((dynamic res) {
      final List<dynamic> jsonData = res as List<dynamic>;
      print(res);
      return jsonData.map((data) => ProductModel.fromJson(data)).toList();
    }).catchError((error) {
      // Handle errors here
      print('Error: $error');
      throw error; // Rethrow the error to propagate it further
    });
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
