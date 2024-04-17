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

  //Text Constant
  static const String HOT_NEWS = 'hot News';
  static const String HOME = 'Home';
  static const String NEWS_ARTICLE = 'News Article';

  @override
  bool updateShouldNotify(Constant oldWidget) => false;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
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
