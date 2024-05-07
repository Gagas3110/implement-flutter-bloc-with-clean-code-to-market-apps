import 'package:flutter/material.dart';

class NavigatorService extends DynatraceNavigationObserver {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateToWithArgmnt(String routeName, dynamic obj) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: obj);
  }

  Future<dynamic> navigateReplaceTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void goBack({value}) {
    return navigatorKey.currentState!.pop(value);
  }
}

class DynatraceNavigationObserver extends NavigatorObserver {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);

    // Mendapatkan nama rute atau pathname
    final String? routeName = route.settings.name;

    // Mengirim pathname ke Dynatrace
    sendNavigationDataToDynatrace(routeName);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);

    // Mendapatkan nama rute atau pathname
    final String? routeName = previousRoute?.settings.name;

    // Mengirim pathname ke Dynatrace
    sendNavigationDataToDynatrace(routeName);
  }

  void sendNavigationDataToDynatrace(String? routeName) {
    // Melakukan pengiriman data pathname ke Dynatrace
    print('Navigasi ke layar dengan pathname: $routeName');
    // Lakukan pengiriman data ke Dynatrace di sini
  }
}
