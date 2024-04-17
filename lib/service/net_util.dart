// ignore_for_file: unnecessary_null_comparison, unnecessary_type_check, deprecated_member_use

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:news_app/service/app_exception.dart';

class NetworkUtil {
  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;
  var dio = Dio();

  Future<dynamic> deleteDio(String url,
      {Map<String, String>? headers,
      required Map<String, String> param,
      encoding}) async {
    print(url);
    try {
      return await dio
          .delete(_setParameter(url, param).toString(),
              options: Options(headers: headers))
          .then(
            (Response response) => retResp(response),
          );
    } on DioError catch (e) {
      retResp(e.response!);
    }
  }

  Future<dynamic> postDio(String url,
      {Map<String, dynamic>? body,
      Map<String, String>? headers,
      Map<String, String>? param,
      encoding}) async {
    print(url);
    String jsonBody = json.encode(body);
    try {
      return await dio
          .post(_setParameter(url, param!).toString(),
              data: jsonBody,
              options: Options(
                headers: headers,
              ))
          .then(
            (Response response) => retResp(response),
          );
    } on DioError catch (e) {
      retResp(e.response!);
    }
  }

  Future<dynamic> getDio(String url,
      {required Map<String, dynamic> param,
      Map<String, dynamic>? headers,
      encoding}) async {
    print(url);
    try {
      return await dio.get(_setParameter(url, param).toString()).then(
            (Response response) => retResp(response),
          );
    } on DioError catch (e) {
      retResp(e.response!);
    }
  }

  Future<dynamic> putDio(String url,
      {Map<String, dynamic>? body,
      Map<String, String>? headers,
      required Map<String, String> param,
      encoding}) async {
    print(url);
    print(body);
    String jsonBody = json.encode(body);

    try {
      return await dio
          .put(_setParameter(url, param).toString(),
              data: jsonBody, options: Options(headers: headers))
          .then(
            (Response response) => retResp(response),
          );
    } on DioError catch (e) {
      retResp(e.response!);
    }
  }

  Future<dynamic> multipartOneFile(String req, String url,
      {File? image,
      Map<String, String>? headers,
      required Map<String, String> param,
      Map<String, String>? body,
      encoding}) async {
    print(url);
    Uri uri = _setParameter(url, param);

    var request = http.MultipartRequest(req, uri);
    if (headers != null && headers.isNotEmpty) request.headers.addAll(headers);
    if (body != null && body.isNotEmpty) request.fields.addAll(body);
    if (image != null)
      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          image.path,
        ),
      );
    // ? SENDING REQ
    http.StreamedResponse response = await request.send();
    final responseGetter = await response.stream.bytesToString();

    switch (response.statusCode) {
      case 200:
        Map<dynamic, dynamic> responseJson = {};
        var responseHeader = response.headers;
        if (responseHeader != null) responseJson.addAll(responseHeader);

        var responseBody = json.decode(responseGetter);
        if (responseBody is Map) responseJson.addAll(responseBody);

        return responseJson;
      case 400:
        throw BadRequestException('Error 400');
      case 401:
        throw RefreshTokenFailedException('Response 401');
      case 403:
        throw UnauthorisedException(response.headers.toString());
      case 500:
        Map responseJson = {};
        responseJson.addAll(response.headers);
        var responseBody = json.decode(responseGetter);
        responseJson.addAll(responseBody);
        var message = responseJson['message'];
        throw FetchDataException('Error 500 : $message');
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  Future<dynamic> delete(String url,
      {Map<String, String>? headers,
      required Map<String, String> param,
      encoding}) async {
    print(url);
    return await http.delete(_setParameter(url, param), headers: headers).then(
          (http.Response response) => _returnResponse(response),
        );
  }

  dynamic returnResponseWithHeader(http.Response response) {
    switch (response.statusCode) {
      case 200:
        Map<dynamic, dynamic> responseJson = {};
        var responseBody = json.decode(response.body.toString());
        var responseHeader = response.headers;
        // ignore: duplicate_ignore
        if (responseBody is Map) {
          responseJson.addAll(responseBody);

          if (responseHeader != null) {
            responseJson.addAll(responseHeader);
          }
        }
        dynamic returnThis;
        if (responseJson == {}) {
          returnThis = responseBody;
        } else {
          returnThis = responseJson;
        }
        return returnThis;
      case 400:
        var responseJson = json.decode(response.body.toString());
        throw BadRequestException(responseJson['message']);
      case 401:
        throw RefreshTokenFailedException('Response 401');
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        var responseJson = json.decode(response.body.toString());
        throw FetchDataException(responseJson['message']);
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  dynamic returnResponseImage(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson;

        responseJson = response.body;

        return responseJson;
      case 400:
        var responseJson = json.decode(response.body.toString());
        throw BadRequestException(responseJson['message']);
      case 401:
        throw RefreshTokenFailedException('Response 401');
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        var responseJson = json.decode(response.body.toString());
        throw FetchDataException(responseJson['message']);
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson;
        if (response.body is String && response.body.isNotEmpty) {
          responseJson = json.decode(response.body.toString());
        } else {
          responseJson = response.body;
        }
        return responseJson;
      case 400:
        var responseJson = json.decode(response.body.toString());
        throw BadRequestException(responseJson['message']);
      case 401:
        throw RefreshTokenFailedException('Response 401');
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        var responseJson = json.decode(response.body.toString());
        throw FetchDataException(responseJson['message']);
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  dynamic retResp(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson;
        if (response.data is String && response.data.isNotEmpty) {
          responseJson = json.decode(response.data.toString());
        } else {
          responseJson = response.data;
        }
        return responseJson;
      case 400:
        var responseJson = response.data;
        throw BadRequestException(responseJson['message']);
      case 401:
        throw RefreshTokenFailedException('Response 401');
      case 403:
        throw UnauthorisedException(response.statusMessage.toString());
      case 500:
        var responseJson = json.decode(response.statusMessage.toString());
        throw FetchDataException(responseJson['message']);
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  Uri _setParameter(String url, Map<String, dynamic> param) {
    if (url == null) {
      // ignore: cast_from_null_always_fails
      return null as Uri;
    }

    int count = 0;

    if (param != null) {
      if (!url.endsWith('?')) {
        url = url + '?';
      }
      param.forEach((key, value) {
        if (count == 0) {
          url = url + key + '=$value';
          count++;
        } else {
          url = url + '&' + key + '=$value';
        }
      });
    }
    print(url);
    return Uri.parse(url);
  }
}
