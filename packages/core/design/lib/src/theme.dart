import 'package:flutter/material.dart';

class MaterialTheme {

  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff236a4c),
      surfaceTint: Color(0xff236a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaaf2cb),
      onPrimaryContainer: Color(0xff002113),
      secondary: Color(0xff4d6356),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e8d8),
      onSecondaryContainer: Color(0xff0a1f15),
      tertiary: Color(0xff3d6472),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc0e9fa),
      onTertiaryContainer: Color(0xff001f28),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff5fbf4),
      onBackground: Color(0xff171d19),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff171d19),
      surfaceVariant: Color(0xffdce5dd),
      onSurfaceVariant: Color(0xff404943),
      outline: Color(0xff707973),
      outlineVariant: Color(0xffc0c9c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inverseOnSurface: Color(0xffedf2ec),
      inversePrimary: Color(0xff8fd5b0),
      primaryFixed: Color(0xffaaf2cb),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff8fd5b0),
      onPrimaryFixedVariant: Color(0xff005236),
      secondaryFixed: Color(0xffd0e8d8),
      onSecondaryFixed: Color(0xff0a1f15),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff364b3f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff001f28),
      tertiaryFixedDim: Color(0xffa4cdde),
      onTertiaryFixedVariant: Color(0xff234c5a),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004d32),
      surfaceTint: Color(0xff236a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3c8161),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff32473b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff637a6c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1f4856),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff537a89),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff5fbf4),
      onBackground: Color(0xff171d19),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff171d19),
      surfaceVariant: Color(0xffdce5dd),
      onSurfaceVariant: Color(0xff3c453f),
      outline: Color(0xff58615b),
      outlineVariant: Color(0xff747d76),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inverseOnSurface: Color(0xffedf2ec),
      inversePrimary: Color(0xff8fd5b0),
      primaryFixed: Color(0xff3c8161),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff206849),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff637a6c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4b6154),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff537a89),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3a6170),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002818),
      surfaceTint: Color(0xff236a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d32),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff11261c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff32473b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002631),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1f4856),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff5fbf4),
      onBackground: Color(0xff171d19),
      surface: Color(0xfff5fbf4),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdce5dd),
      onSurfaceVariant: Color(0xff1d2621),
      outline: Color(0xff3c453f),
      outlineVariant: Color(0xff3c453f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffb3fcd4),
      primaryFixed: Color(0xff004d32),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003421),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff32473b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1c3126),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1f4856),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff01313f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff5fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8fd5b0),
      surfaceTint: Color(0xff8fd5b0),
      onPrimary: Color(0xff003824),
      primaryContainer: Color(0xff005236),
      onPrimaryContainer: Color(0xffaaf2cb),
      secondary: Color(0xffb4ccbc),
      onSecondary: Color(0xff20352a),
      secondaryContainer: Color(0xff364b3f),
      onSecondaryContainer: Color(0xffd0e8d8),
      tertiary: Color(0xffa4cdde),
      onTertiary: Color(0xff063543),
      tertiaryContainer: Color(0xff234c5a),
      onTertiaryContainer: Color(0xffc0e9fa),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1511),
      onBackground: Color(0xffdee4de),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdee4de),
      surfaceVariant: Color(0xff404943),
      onSurfaceVariant: Color(0xffc0c9c1),
      outline: Color(0xff8a938c),
      outlineVariant: Color(0xff404943),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inverseOnSurface: Color(0xff2c322e),
      inversePrimary: Color(0xff236a4c),
      primaryFixed: Color(0xffaaf2cb),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff8fd5b0),
      onPrimaryFixedVariant: Color(0xff005236),
      secondaryFixed: Color(0xffd0e8d8),
      onSecondaryFixed: Color(0xff0a1f15),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff364b3f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff001f28),
      tertiaryFixedDim: Color(0xffa4cdde),
      onTertiaryFixedVariant: Color(0xff234c5a),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff93dab4),
      surfaceTint: Color(0xff8fd5b0),
      onPrimary: Color(0xff001b0f),
      primaryContainer: Color(0xff599e7c),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb8d1c1),
      onSecondary: Color(0xff051a10),
      secondaryContainer: Color(0xff7f9688),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa9d1e2),
      onTertiary: Color(0xff001921),
      tertiaryContainer: Color(0xff6f96a6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1511),
      onBackground: Color(0xffdee4de),
      surface: Color(0xff0f1511),
      onSurface: Color(0xfff7fcf6),
      surfaceVariant: Color(0xff404943),
      onSurfaceVariant: Color(0xffc4cdc5),
      outline: Color(0xff9ca59e),
      outlineVariant: Color(0xff7c857e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inverseOnSurface: Color(0xff262b27),
      inversePrimary: Color(0xff005337),
      primaryFixed: Color(0xffaaf2cb),
      onPrimaryFixed: Color(0xff00150b),
      primaryFixedDim: Color(0xff8fd5b0),
      onPrimaryFixedVariant: Color(0xff003f28),
      secondaryFixed: Color(0xffd0e8d8),
      onSecondaryFixed: Color(0xff02150b),
      secondaryFixedDim: Color(0xffb4ccbc),
      onSecondaryFixedVariant: Color(0xff253b2f),
      tertiaryFixed: Color(0xffc0e9fa),
      onTertiaryFixed: Color(0xff00141b),
      tertiaryFixedDim: Color(0xffa4cdde),
      onTertiaryFixedVariant: Color(0xff0f3b49),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeefff2),
      surfaceTint: Color(0xff8fd5b0),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff93dab4),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeefff2),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8d1c1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff6fcff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa9d1e2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1511),
      onBackground: Color(0xffdee4de),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff404943),
      onSurfaceVariant: Color(0xfff4fdf5),
      outline: Color(0xffc4cdc5),
      outlineVariant: Color(0xffc4cdc5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff00311f),
      primaryFixed: Color(0xffaef6cf),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff93dab4),
      onPrimaryFixedVariant: Color(0xff001b0f),
      secondaryFixed: Color(0xffd4eddc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb8d1c1),
      onSecondaryFixedVariant: Color(0xff051a10),
      tertiaryFixed: Color(0xffc4edff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa9d1e2),
      onTertiaryFixedVariant: Color(0xff001921),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
