// import 'dart:async';
// import 'package:flagsmith/flagsmith.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:news_app/routes/locator.dart';
// import 'package:news_app/routes/navigator_service.dart';
// import 'package:news_app/routes/route_generator.dart';
// import 'package:news_app/ui/first_ui.dart';
// import 'package:opentelemetry/api.dart';
// import 'package:sizer/sizer.dart';
// import 'bloc/flagsmith/flagsmith_bloc.dart';
// import 'bloc/flagsmith/flagsmith_event.dart';
// import 'helper/app_config.dart';
// import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';
// import 'package:opentelemetry/sdk.dart' as otel_sdk;

// void main() {
//   setupLocator();
//   initializeApp();
// }

// void initializeApp() async {
//   try {
//     // var urlTracer = 'https://lag05212.live.dynatrace.com/api/v2/otlp/v1/traces';
//     // final exporter = otel_sdk.CollectorExporter(Uri.parse(urlTracer));
//     // final processor =
//     //     otel_sdk.BatchSpanProcessor(exporter, scheduledDelayMillis: 10000);
//     // // Send spans to a collector every 5 seconds
//     // final provider = otel_sdk.TracerProviderBase(processors: [processor]);
//     // registerGlobalTracerProvider(provider);
//     // final tracer = provider.getTracer('instrumentation-name');
//     // final span = tracer.startSpan('doingWork');
//     // span.end();
//     AppConfig.create(
//       appName: "NewsApp Dev",
//       baseUrl: "https://newsapi.org/v2/",
//       dummyUrl: 'https://dummyjson.com/auth/login',
//       fakeStoreUrl: 'https://fakestoreapi.com',
//       flagSmithUrl: 'https://edge.api.flagsmith.com/api/v1/flags',
//       flagSmithKey: 'KyZRjLZrk37N3PEbfJGs9R',
//       primaryColor: Colors.yellow,
//       flavor: Flavor.dev,
//     );
//     runZonedGuarded<Future<void>>(() async {
//       Dynatrace().applyUserPrivacyOptions(
//           UserPrivacyOptions(DataCollectionLevel.UserBehavior, true));
//       // Dynatrace().applyUserPrivacyOptions(
//       //     UserPrivacyOptions(DataCollectionLevel.Off, false));
//       Dynatrace().start(NewsAppDev());
//     }, Dynatrace().reportZoneStacktrace);
//   } catch (e, stackTrace) {
//     print('Error initializing Flagsmith: $e');
//     print(stackTrace.toString());
//     Dynatrace().reportCrash(
//         'FormatException', 'Flagsmith Error', stackTrace.toString());
//   }
// }

// // Future<dynamic> fetchFeatureFlags(FlagsmithClient client) async {
// //   return await client.getFeatureFlags(reload: true);
// // }

// class NewsAppDev extends StatelessWidget {
//   const NewsAppDev({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => FlagsmithBloc()..add(SetupFlagsmithEvent()),
//       child: Sizer(
//         builder: (context, orientation, deviceType) {
//           return MaterialApp(
//             title: 'NewsAppDev',
//             debugShowCheckedModeBanner: false,
//             navigatorKey: locator<NavigatorService>().navigatorKey,
//             theme: ThemeData(
//               fontFamily: 'Roboto',
//               primaryColor: Colors.deepPurple,
//             ),
//             home: LoginUi(),
//             onGenerateRoute: (settings) =>
//                 RouteGenerator.generateRoute(settings),
//           );
//         },
//       ),
//     );
//   }
// }

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
import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart' as plug;

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

    // Initialize Dynatrace
    await plug.Dynatrace().start(NewsAppDev());
    plug.Dynatrace().applyUserPrivacyOptions(
        plug.UserPrivacyOptions(plug.DataCollectionLevel.UserBehavior, true));
  } catch (e, stackTrace) {
    print('Error initializing Dynatrace: $e');
    print(stackTrace.toString());
    plug.Dynatrace().reportCrash(
        'Exception', 'Dynatrace Initialization Error', stackTrace.toString());
  }
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
            navigatorObservers: [locator<DynatraceNavigationObserver>()],
            onGenerateRoute: (settings) =>
                RouteGenerator.generateRoute(settings),
          );
        },
      ),
    );
  }
}
