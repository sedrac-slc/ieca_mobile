import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5d5f5f),
      surfaceTint: Color(0xff5d5f5f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffffff),
      onPrimaryContainer: Color(0xff747676),
      secondary: Color(0xff7d264d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9b3e65),
      onSecondaryContainer: Color(0xffffccdb),
      tertiary: Color(0xff73556e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd7f5),
      onTertiaryContainer: Color(0xff7a5b74),
      error: Color(0xffb80f58),
      onError: Color(0xffffffff),
      errorContainer: Color(0xfffd4e8a),
      onErrorContainer: Color(0xff590026),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff1e1b1c),
      onSurfaceVariant: Color(0xff46464d),
      outline: Color(0xff77767e),
      outlineVariant: Color(0xffc7c5cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff332f30),
      inversePrimary: Color(0xffc6c6c7),
      primaryFixed: Color(0xffe2e2e2),
      onPrimaryFixed: Color(0xff1a1c1c),
      primaryFixedDim: Color(0xffc6c6c7),
      onPrimaryFixedVariant: Color(0xff454747),
      secondaryFixed: Color(0xffffd9e3),
      onSecondaryFixed: Color(0xff3e0020),
      secondaryFixedDim: Color(0xffffb0cb),
      onSecondaryFixedVariant: Color(0xff7d264d),
      tertiaryFixed: Color(0xffffd7f5),
      onTertiaryFixed: Color(0xff2b1328),
      tertiaryFixedDim: Color(0xffe1bbd8),
      onTertiaryFixedVariant: Color(0xff5a3e55),
      surfaceDim: Color(0xffe0d8d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf2f2),
      surfaceContainer: Color(0xfff4eced),
      surfaceContainerHigh: Color(0xffeee6e7),
      surfaceContainerHighest: Color(0xffe8e1e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff343637),
      surfaceTint: Color(0xff5d5f5f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6c6d6d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff67133c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9b3e65),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff482d44),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff83637d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff700032),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcd2667),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff131011),
      onSurfaceVariant: Color(0xff35363c),
      outline: Color(0xff525259),
      outlineVariant: Color(0xff6d6c73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff332f30),
      inversePrimary: Color(0xffc6c6c7),
      primaryFixed: Color(0xff6c6d6d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff535555),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffad4c73),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8f345b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff83637d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff694b64),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffccc5c6),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf2f2),
      surfaceContainer: Color(0xffeee6e7),
      surfaceContainerHigh: Color(0xffe2dbdc),
      surfaceContainerHighest: Color(0xffd7d0d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2a2c2d),
      surfaceTint: Color(0xff5d5f5f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff48494a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5a0631),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff80284f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3d233a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d4058),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5e0029),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff940044),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2b2c32),
      outlineVariant: Color(0xff49484f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff332f30),
      inversePrimary: Color(0xffc6c6c7),
      primaryFixed: Color(0xff48494a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff313333),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff80284f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff630f38),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5d4058),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff442a41),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbeb7b8),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7eff0),
      surfaceContainer: Color(0xffe8e1e1),
      surfaceContainerHigh: Color(0xffdad3d3),
      surfaceContainerHighest: Color(0xffccc5c6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffc6c6c7),
      onPrimary: Color(0xff2f3131),
      primaryContainer: Color(0xffe2e2e2),
      onPrimaryContainer: Color(0xff636565),
      secondary: Color(0xffffb0cb),
      onSecondary: Color(0xff5f0c36),
      secondaryContainer: Color(0xff9b3e65),
      onSecondaryContainer: Color(0xffffccdb),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff42283e),
      tertiaryContainer: Color(0xffffd7f5),
      onTertiaryContainer: Color(0xff7a5b74),
      error: Color(0xffffb1c3),
      onError: Color(0xff66002d),
      errorContainer: Color(0xfffd4e8a),
      onErrorContainer: Color(0xff590026),
      surface: Color(0xff151313),
      onSurface: Color(0xffe8e1e1),
      onSurfaceVariant: Color(0xffc7c5cd),
      outline: Color(0xff919097),
      outlineVariant: Color(0xff46464d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e1e1),
      inversePrimary: Color(0xff5d5f5f),
      primaryFixed: Color(0xffe2e2e2),
      onPrimaryFixed: Color(0xff1a1c1c),
      primaryFixedDim: Color(0xffc6c6c7),
      onPrimaryFixedVariant: Color(0xff454747),
      secondaryFixed: Color(0xffffd9e3),
      onSecondaryFixed: Color(0xff3e0020),
      secondaryFixedDim: Color(0xffffb0cb),
      onSecondaryFixedVariant: Color(0xff7d264d),
      tertiaryFixed: Color(0xffffd7f5),
      onTertiaryFixed: Color(0xff2b1328),
      tertiaryFixedDim: Color(0xffe1bbd8),
      onTertiaryFixedVariant: Color(0xff5a3e55),
      surfaceDim: Color(0xff151313),
      surfaceBright: Color(0xff3c3839),
      surfaceContainerLowest: Color(0xff100d0e),
      surfaceContainerLow: Color(0xff1e1b1c),
      surfaceContainer: Color(0xff221f20),
      surfaceContainerHigh: Color(0xff2c292a),
      surfaceContainerHighest: Color(0xff373435),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffc6c6c7),
      onPrimary: Color(0xff2f3131),
      primaryContainer: Color(0xffe2e2e2),
      onPrimaryContainer: Color(0xff464849),
      secondary: Color(0xffffd0de),
      onSecondary: Color(0xff50002b),
      secondaryContainer: Color(0xffd86f98),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff42283e),
      tertiaryContainer: Color(0xffffd7f5),
      onTertiaryContainer: Color(0xff5b3f57),
      error: Color(0xffffd1da),
      onError: Color(0xff520023),
      errorContainer: Color(0xfffd4e8a),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff151313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdddbe3),
      outline: Color(0xffb2b1b9),
      outlineVariant: Color(0xff908f97),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e1e1),
      inversePrimary: Color(0xff464849),
      primaryFixed: Color(0xffe2e2e2),
      onPrimaryFixed: Color(0xff0f1112),
      primaryFixedDim: Color(0xffc6c6c7),
      onPrimaryFixedVariant: Color(0xff343637),
      secondaryFixed: Color(0xffffd9e3),
      onSecondaryFixed: Color(0xff2b0014),
      secondaryFixedDim: Color(0xffffb0cb),
      onSecondaryFixedVariant: Color(0xff67133c),
      tertiaryFixed: Color(0xffffd7f5),
      onTertiaryFixed: Color(0xff1f081d),
      tertiaryFixedDim: Color(0xffe1bbd8),
      onTertiaryFixedVariant: Color(0xff482d44),
      surfaceDim: Color(0xff151313),
      surfaceBright: Color(0xff474344),
      surfaceContainerLowest: Color(0xff090707),
      surfaceContainerLow: Color(0xff201d1e),
      surfaceContainer: Color(0xff2a2728),
      surfaceContainerHigh: Color(0xff353232),
      surfaceContainerHighest: Color(0xff413d3d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffc6c6c7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe2e2e2),
      onPrimaryContainer: Color(0xff282a2b),
      secondary: Color(0xffffebef),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffaac7),
      onSecondaryContainer: Color(0xff20000e),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffd7f5),
      onTertiaryContainer: Color(0xff3b2137),
      error: Color(0xffffebee),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffabbf),
      onErrorContainer: Color(0xff21000a),
      surface: Color(0xff151313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff1eff7),
      outlineVariant: Color(0xffc3c1ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e1e1),
      inversePrimary: Color(0xff464849),
      primaryFixed: Color(0xffe2e2e2),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc6c6c7),
      onPrimaryFixedVariant: Color(0xff0f1112),
      secondaryFixed: Color(0xffffd9e3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb0cb),
      onSecondaryFixedVariant: Color(0xff2b0014),
      tertiaryFixed: Color(0xffffd7f5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe1bbd8),
      onTertiaryFixedVariant: Color(0xff1f081d),
      surfaceDim: Color(0xff151313),
      surfaceBright: Color(0xff534f50),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff221f20),
      surfaceContainer: Color(0xff332f30),
      surfaceContainerHigh: Color(0xff3e3a3b),
      surfaceContainerHighest: Color(0xff4a4647),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.onPrimary,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

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
