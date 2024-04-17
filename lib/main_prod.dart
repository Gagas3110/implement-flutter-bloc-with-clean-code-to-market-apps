import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/flagsmith/flagsmith_bloc.dart';
import 'package:news_app/bloc/flagsmith/flagsmith_event.dart';
import 'package:news_app/routes/locator.dart';
import 'package:news_app/routes/navigator_service.dart';
import 'package:news_app/routes/route_generator.dart';
import 'package:news_app/ui/first_ui.dart';
import 'package:sizer/sizer.dart';

import 'helper/app_config.dart';

void main() {
  setupLocator();
  initializeApp();
}

void initializeApp() async {
  try {
    AppConfig.create(
      appName: "NewsApp Prod",
      baseUrl: "https://newsapi.org/v2/",
      dummyUrl: 'https://dummyjson.com/auth/login',
      fakeStoreUrl: 'https://fakestoreapi.com',
      flagSmithUrl: 'https://edge.api.flagsmith.com/api/v1/flags',
      flagSmithKey: 'cCVesuT58Rdf86vAz7V4br',
      primaryColor: Colors.yellow,
      flavor: Flavor.prod,
    );
    runApp(NewsAppProd());
  } catch (e) {
    print('Error initializing Flagsmith: $e');
  }
}

class NewsAppProd extends StatelessWidget {
  const NewsAppProd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlagsmithBloc()..add(SetupFlagsmithEvent()),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'NewsAppProd',
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
