import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixelfield/common/design_system/theme/app_theme.dart';
import 'package:pixelfield/utils/pixelfield_routes.dart';

void main() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routes: PixelFieldRoutes.routes,
      initialRoute: PixelFieldRoutes.splashScreen,
      onGenerateRoute: PixelFieldRoutes.generateRoute,
    );
  }
}
