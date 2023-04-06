import 'package:flutter/material.dart';
import 'package:news_app/navigation/locator.dart';
import 'package:news_app/navigation/navigator_service.dart';
import 'package:news_app/navigation/route_generator.dart';
import 'package:news_app/ui/first_ui.dart';
import 'package:sizer/sizer.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'NewsApp',
        debugShowCheckedModeBanner: false,
        navigatorKey: locator<NavigatorService>().navigatorKey,
        theme: ThemeData(fontFamily: 'Inter'),
        //home: const HomeUi(),
        home : FirstUi(),
        onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      );
    });
  }
}
