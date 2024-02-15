import 'dart:convert';

import 'package:news_app/data/model/login.dart';
import 'package:news_app/data/remote/auth_data_source/auth_data_source.dart';
import 'package:news_app/service/base_api_service.dart';
import 'package:news_app/service/net_util.dart';

class AuthDataSourceImpl extends BaseApiService implements AuthDataSource {
  NetworkUtil net = NetworkUtil();

  Future<Login> login(Map<String, dynamic> body) async {
    try {
      final response = await net.postDio(dummyUrl,
          headers: _headers,
          body: body,
          encoding: Encoding.getByName('utf-8'),
          param: {});
      if (response["errMsg"] != null) throw (response["errMsg"].toString());
      return Login.fromJson(response);
    } catch (e) {
      throw ('Failed to login: $e');
    }
  }

  Map<String, String> get _headers => {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
}
