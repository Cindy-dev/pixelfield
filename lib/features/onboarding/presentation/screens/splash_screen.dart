import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/pixelfield_routes.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import '../../../../common/widgets/custom_scaffold.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateAfterSplash();
  }

  void navigateAfterSplash() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(
            context, PixelFieldRoutes.welcomeScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Image.asset(PixelFieldStrings.oneCask),
    );
  }
}
