part of 'app_theme.dart';

class AppTextStyles {
  static const displayLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: AppFont.eBGaramond,
    color: _Colors.textColor,
  );
  static const displaySmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: AppFont.lato,
    color: _Colors.textColor,
  );
  static const heading = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    fontFamily: AppFont.eBGaramond,
    color: _Colors.textColor,
  );
  static const title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    fontFamily: AppFont.lato,
    color: _Colors.textColor,
  );
  static const body = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppFont.lato,
      color: _Colors.textColor
  );

  static const subtitle = TextStyle(
    fontSize: 15,
    fontFamily: AppFont.lato,
    fontWeight: FontWeight.w300,
    color: _Colors.textColor,
  );
}
