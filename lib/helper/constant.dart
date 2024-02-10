import 'package:flutter/material.dart';

class Constant extends InheritedWidget {
  static Constant? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Constant>();

  const Constant({required Widget child, Key? key})
      : super(key: key, child: child);

  static const String MENU_HOME = "MENU_HOME";
  static const String MENU_DETAIL = "MENU_DETAIL";
  static const String FIRST_SCREEN = "FIRST_SCREEN";
  static const String MENU_ALL_RECOMMENDATION = "MENU_ALL_RECOMMENDATION";

  @override
  bool updateShouldNotify(Constant oldWidget) => false;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class ApiConstants {
  static const String Login = "login";
  static const String TopHeadlines = "top-headlines";
  static const String Everything = 'everything';
  static const String product = '/products';
  static const String productCategory = '/category';
  static const String jewelery = '/jewelery';
  static const String electronics = '/electronics';
  static const String mensClothing = "/men's clothing";
  static const String womensClothing = "/women's clothing";
}

class ApiKeyConstants {
  static const String ApiKey = "ec346a533c5c4e7589a0e2b07327168e";
}

class ApiCodeRegion {
  static const String CodeRegion = 'us';
}

class SharedKey {
  static const String token = 'token';
  static const String image = 'image';
  static const String url = 'url';
  static const String username = 'username';
  static const String password = 'password';
  static const String name = 'name';
  static const String lastName = 'lastName';
  static const String gender = 'gender';
}
