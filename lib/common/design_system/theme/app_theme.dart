library theme;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors_theme_extension.dart';
part 'app_colors.dart';
part 'app_text_styles.dart';
part 'app_fonts.dart';

final ThemeData appTheme = _buildTheme();

ThemeData _buildTheme() {
  const Color primaryColor = _Colors.primaryColor;
  const Color secondaryColor = _Colors.yellow;
  const Color tertiaryColor = _Colors.textColor;

  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      error: _Colors.red,
      tertiary: tertiaryColor,
      shadow: _Colors.gray);
  final themeData = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    shadowColor: _Colors.gray,
    cardColor: _Colors.white,
    scaffoldBackgroundColor: _Colors.greyscaleBlack,
    highlightColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: _Colors.greyscaleBlack,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      centerTitle: true,
      elevation: 0,
    ),
    popupMenuTheme: const PopupMenuThemeData(
        color: _Colors.white, surfaceTintColor: Colors.transparent),
    snackBarTheme: SnackBarThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      behavior: SnackBarBehavior.fixed,
      contentTextStyle: AppTextStyles.title,
      insetPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
    ),
    dividerColor: _Colors.textColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.maxFinite, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        backgroundColor: primaryColor,
        textStyle: AppTextStyles.displayLarge,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 13.5),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: primaryColor),
        ),
        elevation: 0,
        textStyle: AppTextStyles.displayLarge,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 13.5),
      ),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: _Colors.white,
      surfaceTintColor: Colors.transparent,
      contentTextStyle: AppTextStyles.title,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.displayLarge,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: BorderSide(color: _Colors.gray.withOpacity(0.5)),
      ),
      isDense: true,
      hintStyle:
          AppTextStyles.body.copyWith(color: _Colors.gray.withOpacity(0.7)),
    ),
    cardTheme: const CardTheme(
      color: _Colors.white,
      surfaceTintColor: _Colors.white,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.displayLarge,
      displaySmall: AppTextStyles.displaySmall,
      headlineLarge: AppTextStyles.heading,
      headlineMedium: AppTextStyles.title,
      titleLarge: AppTextStyles.title,
      titleMedium: AppTextStyles.title,
      bodyLarge: AppTextStyles.body,
      bodySmall: AppTextStyles.subtitle,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: _Colors.white, surfaceTintColor: Colors.transparent),
    dialogBackgroundColor: _Colors.white,
    extensions: [
      ColorThemeExt(
        gray: _Colors.gray,
        red: _Colors.red,
        white: _Colors.white,
        yellow: _Colors.yellow,
        primaryColor: _Colors.primaryColor,
        textColor: _Colors.textColor,
        greyscaleBlack: _Colors.greyscaleBlack,
      ),
    ],
  );
  return themeData;
}
