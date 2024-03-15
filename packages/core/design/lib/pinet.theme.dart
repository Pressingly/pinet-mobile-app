import 'package:flutter/material.dart';

import 'color_schemes.dart';

const pinetDefaultFont = 'RobotoCondensed';

final pinetThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  fontFamily: pinetDefaultFont,
);

final pinetDarkThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  fontFamily: pinetDefaultFont,
);

extension CustomTextTheme on TextTheme {
  TextStyle? get bodyLargeProminent => bodyLarge?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );
}

extension DesignThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;
}
