import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import 'package:pixelfield/common/utils/svg_render_widget.dart';
import 'package:pixelfield/features/collection/presentation/screens/my_collection_screen.dart';

import 'collection/logic/collection_bloc.dart';
import 'collection/logic/collection_event.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  @override
  void initState() {
    //gives access to the bloc
    context.read<CollectionBloc>().add(LoadCollection());
    super.initState();
  }
  int _currentIndex = 1;
  List screenOptions = [
    const Scaffold(),
    const MyCollectionScreen(),
    const Scaffold(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: screenOptions.elementAt(_currentIndex),
      bottomNavigationBar: Container(
        height: 99,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            unselectedItemColor: context.themeData.shadowColor,
            selectedItemColor: context.themeData.cardColor,
            selectedLabelStyle: context.textTheme.bodyLarge
                ?.copyWith(fontSize: 12, color: context.themeData.cardColor),
            unselectedLabelStyle: context.textTheme.bodyLarge
                ?.copyWith(fontSize: 12, color: context.themeData.shadowColor),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: SvgRenderWidget(
                  svgPath: PixelFieldStrings.scan,
                  color: _currentIndex == 0
                      ? context.themeData.cardColor
                      : context.themeData.shadowColor,
                ),
                label: "Scan",
              ),
              BottomNavigationBarItem(
                icon: SvgRenderWidget(
                  svgPath: PixelFieldStrings.squaresFour,
                  color: _currentIndex == 1
                      ? context.themeData.cardColor
                      : context.themeData.shadowColor,
                ),
                label: "Collection",
              ),
              BottomNavigationBarItem(
                icon: SvgRenderWidget(
                  svgPath: PixelFieldStrings.bottle,
                  color: _currentIndex == 2
                      ? context.themeData.cardColor
                      : context.themeData.shadowColor,
                ),
                label: "Shop",
              ),
              BottomNavigationBarItem(
                icon: SvgRenderWidget(
                  svgPath: PixelFieldStrings.gearSix,
                  color: _currentIndex == 3
                      ? context.themeData.cardColor
                      : context.themeData.shadowColor,
                ),
                label: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
