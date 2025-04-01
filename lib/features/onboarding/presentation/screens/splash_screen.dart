import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/pixelfield_routes.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';

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
            context, PixelFieldRoutes.myCollectionScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.deviceHeight(),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(PixelFieldStrings.background),
          ),
        ),
        child: Image.asset(PixelFieldStrings.oneCask),
      ),
    );
  }
}
