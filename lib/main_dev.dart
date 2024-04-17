import 'dart:async';
import 'package:flagsmith/flagsmith.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/routes/locator.dart';
import 'package:news_app/routes/navigator_service.dart';
import 'package:news_app/routes/route_generator.dart';
import 'package:news_app/ui/first_ui.dart';
import 'package:sizer/sizer.dart';
import 'bloc/flagsmith/flagsmith_bloc.dart';
import 'bloc/flagsmith/flagsmith_event.dart';
import 'helper/app_config.dart';

void main() {
  setupLocator();
  initializeApp();
}

void initializeApp() async {
  try {
    AppConfig.create(
      appName: "NewsApp Dev",
      baseUrl: "https://newsapi.org/v2/",
      dummyUrl: 'https://dummyjson.com/auth/login',
      fakeStoreUrl: 'https://fakestoreapi.com',
      flagSmithUrl: 'https://edge.api.flagsmith.com/api/v1/flags',
      flagSmithKey: 'KyZRjLZrk37N3PEbfJGs9R',
      primaryColor: Colors.yellow,
      flavor: Flavor.dev,
    );
    runApp(NewsAppDev());
  } catch (e) {
    print('Error initializing Flagsmith: $e');
  }
}

Future<dynamic> fetchFeatureFlags(FlagsmithClient client) async {
  return await client.getFeatureFlags(reload: true);
}

class NewsAppDev extends StatelessWidget {
  const NewsAppDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlagsmithBloc()..add(SetupFlagsmithEvent()),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'NewsAppDev',
            debugShowCheckedModeBanner: false,
            navigatorKey: locator<NavigatorService>().navigatorKey,
            theme: ThemeData(
              fontFamily: 'Roboto',
              primaryColor: Colors.deepPurple,
            ),
            home: LoginUi(),
            onGenerateRoute: (settings) =>
                RouteGenerator.generateRoute(settings),
          );
        },
      ),
    );
  }
}
