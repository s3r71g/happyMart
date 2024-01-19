import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onSecondaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray40002,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary.withOpacity(1),
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primary.withOpacity(1),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 10.fSize,
          fontFamily: 'Klarna Sans',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 45.fSize,
          fontFamily: 'Black Han Sans',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 34.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: Color(0XFF1CA672),
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 8.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 17.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: Color(0XFF000000),
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X3F000000),
    primaryContainer: Color(0XFF0D0D0D),
    secondaryContainer: Color(0X916D3805),

    // Error colors
    errorContainer: Color(0XFFABABAB),
    onError: Color(0XFF010101),

    // On colors(text colors)
    onPrimary: Color(0XFF303030),
    onPrimaryContainer: Color(0XFF6559E4),
    onSecondaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber700 => Color(0XFFF9A000);
  Color get amber900 => Color(0XFFFF7300);

  // Blue
  Color get blue900 => Color(0XFF165AAB);
  Color get blue90001 => Color(0XFF074D9E);
  Color get blue90002 => Color(0XFF084D9F);

  // BlueGray
  Color get blueGray100 => Color(0XFFD1CDCD);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray800 => Color(0XFF3F3D56);

  // Cyan
  Color get cyan50 => Color(0XFFDAF1FB);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFFAC0BD);
  Color get deepOrange10001 => Color(0XFFFFC0C0);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEEE2FF);
  Color get deepPurple5001 => Color(0XFFEFE2FF);
  Color get deepPurpleA100 => Color(0XFFAE89FF);
  Color get deepPurpleA10001 => Color(0XFFB79BF3);
  Color get deepPurpleA10002 => Color(0XFF9F72FD);

  // Gray
  Color get gray100 => Color(0XFFF3F3F3);
  Color get gray10001 => Color(0XFFF1F0F5);
  Color get gray10002 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFECECEC);
  Color get gray20001 => Color(0XFFF0F0F0);
  Color get gray20002 => Color(0XFFEFEEEE);
  Color get gray20003 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFE4DFDF);
  Color get gray400 => Color(0XFFB0B0B0);
  Color get gray40001 => Color(0XFFCDBEBE);
  Color get gray40002 => Color(0XFFC0C0C0);
  Color get gray40003 => Color(0XFFC1AAAA);
  Color get gray40004 => Color(0XFFC9C7C7);
  Color get gray50 => Color(0XFFFFFBFB);
  Color get gray500 => Color(0XFF919191);
  Color get gray50001 => Color(0XFF8F8F8F);
  Color get gray50002 => Color(0XFFACACAC);
  Color get gray600 => Color(0XFF808080);
  Color get gray60001 => Color(0XFF818181);

  // Green
  Color get green100 => Color(0XFFD2E5C4);
  Color get green900 => Color(0XFF168104);

  // Indigo
  Color get indigoA200 => Color(0XFF6C63FF);
  Color get indigoA20001 => Color(0XFF6459E4);
  Color get indigoA700 => Color(0XFF3940E7);

  // LightGreen
  Color get lightGreen800 => Color(0XFF54AE0E);
  Color get lightGreen80001 => Color(0XFF55AE0F);

  // LimeD
  Color get lime700D8 => Color(0XD8D3AD25);

  // Lime
  Color get lime800 => Color(0XFFB78E23);

  // Orange
  Color get orange100 => Color(0XFFFFD9B9);
  Color get orange200 => Color(0XFFFDC997);
  Color get orange300 => Color(0XFFFFB55E);
  Color get orangeA700 => Color(0XFFFF5E00);

  // Pink
  Color get pink50 => Color(0XFFFFDEF5);

  // Purple
  Color get purple50 => Color(0XFFEDD0FF);
  Color get purple800 => Color(0XFF612A82);

  // Red
  Color get red100 => Color(0XFFF9CBCB);
  Color get red300 => Color(0XFFDE736C);
  Color get red800 => Color(0XFFB62D2D);
  Color get red80001 => Color(0XFFB52C2C);
  Color get redA700 => Color(0XFFFF0000);

  // Teal
  Color get teal200 => Color(0XFF8ABDD2);
  Color get teal50 => Color(0XFFD6F9E8);
  Color get teal500 => Color(0XFF1CA672);

  // Yellow
  Color get yellow200 => Color(0XFFFFE299);
  Color get yellow900 => Color(0XFFE18B39);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
