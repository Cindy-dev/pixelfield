import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_button.dart';
import 'package:pixelfield/common/utils/pixelfield_routes.dart';
import 'package:pixelfield/common/widgets/custom_scaffold.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: context.primaryColor.withOpacity(0.5),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          alignment: Alignment.bottomCenter,
          height: 264,
          decoration:
              BoxDecoration(color: context.themeData.scaffoldBackgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome!", style: context.textTheme.displayLarge),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 24),
                child:
                    Text("Text text text", style: context.textTheme.bodyLarge),
              ),
              PixelFieldButton(text: "Scan bottle", onPressed: () {}),
              const YMargin(36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have an account?", style: context.textTheme.bodyLarge),
                  const XMargin(10),
                  InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(PixelFieldRoutes.navBarScreen),
                    child: Text(
                      "Sign in first",
                      style: context.textTheme.headlineLarge?.copyWith(
                          fontSize: 16, color: context.secondaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
