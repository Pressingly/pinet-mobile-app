import 'package:design/src/theme.dart';
import 'package:flutter/material.dart';

const pinetDefaultFont = 'RobotoCondensed';

final pinetThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: MaterialTheme.lightScheme().toColorScheme(),
  fontFamily: pinetDefaultFont,
  typography: Typography.material2021(),
);

final pinetDarkThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: MaterialTheme.darkScheme().toColorScheme(),
  fontFamily: pinetDefaultFont,
);

extension CustomTextTheme on TextTheme {
  TextStyle? get bodyLargeProminent => bodyLarge?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get labelLargeProminent => labelLarge?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  TextStyle get currency => const TextStyle(
        fontSize: 32,
        fontFamily: 'Eczar',
        fontWeight: FontWeight.w600,
        height: 0.625,
      );
}

extension DesignThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;
}

extension DimensionContext on BuildContext {
  double get sw => MediaQuery.of(this).size.width;
  double get sh => MediaQuery.of(this).size.height;
}
