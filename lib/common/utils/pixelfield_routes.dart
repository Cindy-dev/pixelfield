import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../features/onboarding/presentation/screens/splash_screen.dart';

class PixelFieldRoutes {
  static const String splashScreen = '/splash';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String navBarScreen = '/navBarScreen';
  static Map<String, Widget Function(BuildContext)> routes = {};

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return routeBuilder(
          const SplashScreen(),
        );
      // Default Route is error route
      default:
        return CupertinoPageRoute(
            builder: (context) => errorView(settings.name));
    }
  }

  static Widget errorView(String? name) {
    return Scaffold(body: Center(child: Text('404 $name View not found')));
  }
}

routeBuilder(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation1, animation2) => widget,
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  );
}
