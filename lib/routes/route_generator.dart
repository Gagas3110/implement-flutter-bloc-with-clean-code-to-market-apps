import 'package:flutter/material.dart';

import 'package:news_app/helper/constant.dart';
import 'package:news_app/data/model/top_headlines_models.dart';
import 'package:news_app/ui/first_ui.dart';
import 'package:news_app/ui/home/home_provider/home_provider.dart';
import 'package:news_app/ui/more_recommendation_ui.dart';
import 'package:news_app/ui/web_view_ui.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case Constant.MENU_HOME:
        return MaterialPageRoute(builder: (_) => HomeUi());

      case Constant.FIRST_SCREEN:
        return MaterialPageRoute(builder: (_) => FirstUi());

      case Constant.MENU_DETAIL:
        String args = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => WebViewUi(headUrl: args));

      case Constant.MENU_ALL_RECOMMENDATION:
        TopHeadlinesModels args = settings.arguments as TopHeadlinesModels;
        return MaterialPageRoute(
            builder: (_) => MoreRecommendationUi(model: args));

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ups, ada sesuatu yang salah. Coba lagi"),
            Container(
              margin: EdgeInsets.all(4),
            ),
            GestureDetector(onTap: () {}, child: Icon(Icons.replay))
          ],
        )),
      );
    });
  }
}
