import 'package:flutter/material.dart';

enum Flavor { prod, dev }

class AppConfig {
  String appName = "";
  String baseUrl = "";
  String dummyUrl = "";
  String fakeStoreUrl = "";
  String flagSmithUrl = "";
  String flagSmithKey = "";

  MaterialColor primaryColor = Colors.blue;
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    String dummyUrl = "",
    String fakeStoreUrl = "",
    String flagSmithUrl = "",
    String flagSmithKey = "",
    MaterialColor primaryColor = Colors.blue,
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(appName, baseUrl, dummyUrl, fakeStoreUrl,
        flagSmithUrl, flagSmithKey, primaryColor, flavor);
  }

  AppConfig(
    this.appName,
    this.baseUrl,
    this.dummyUrl,
    this.fakeStoreUrl,
    this.flagSmithUrl,
    this.flagSmithKey,
    this.primaryColor,
    this.flavor,
  );
}
