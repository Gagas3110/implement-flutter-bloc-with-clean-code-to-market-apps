import 'package:flutter/material.dart';
import 'package:news_app/routes/locator.dart';
import 'package:news_app/routes/navigator_service.dart';
import 'package:news_app/routes/route_generator.dart';
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
        theme: ThemeData(fontFamily: 'Roboto'),
        home: LoginUi(),
        onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      );
    });
  }
}
