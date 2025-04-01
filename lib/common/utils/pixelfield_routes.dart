import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pixelfield/features/collection/presentation/screens/my_collection_screen.dart';
import 'package:pixelfield/features/onboarding/presentation/screens/welcome_screen.dart';
import 'package:pixelfield/features/navigation_bar_screen.dart';
import '../../features/onboarding/presentation/screens/splash_screen.dart';

class PixelFieldRoutes {
  static const String splashScreen = '/splash';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String myCollectionScreen = '/myCollectionScreen';
  static const String navBarScreen = '/navBarScreen';
  static Map<String, Widget Function(BuildContext)> routes = {};

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return routeBuilder(
          const SplashScreen(),
        );
      case welcomeScreen:
        return routeBuilder(
          const WelcomeScreen(),
        );
      case myCollectionScreen:
        return routeBuilder(
          const MyCollectionScreen(),
        );
      case navBarScreen:
        return routeBuilder(
          const NavigationBarScreen(),
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
