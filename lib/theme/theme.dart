import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8b4a63),
      surfaceTint: Color(0xff8b4a63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9e3),
      onPrimaryContainer: Color(0xff6f334b),
      secondary: Color(0xff894a67),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd8e6),
      onSecondaryContainer: Color(0xff6e334f),
      tertiary: Color(0xff815512),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb7),
      onTertiaryContainer: Color(0xff653e00),
      error: Color(0xff904a43),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff73332d),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      onSurfaceVariant: Color(0xff514347),
      outline: Color(0xff837377),
      outlineVariant: Color(0xffd5c2c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e31),
      inversePrimary: Color(0xffffb0cb),
      primaryFixed: Color(0xffffd9e3),
      onPrimaryFixed: Color(0xff39071f),
      primaryFixedDim: Color(0xffffb0cb),
      onPrimaryFixedVariant: Color(0xff6f334b),
      secondaryFixed: Color(0xffffd8e6),
      onSecondaryFixed: Color(0xff390722),
      secondaryFixedDim: Color(0xffffb0d0),
      onSecondaryFixedVariant: Color(0xff6e334f),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff2a1700),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff653e00),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f3),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff4e4e7),
      surfaceContainerHighest: Color(0xffefdfe2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5b223a),
      surfaceTint: Color(0xff8b4a63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9c5871),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5a233e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9a5876),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4e2f00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff926321),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5e231e),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa25851),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff170f11),
      onSurfaceVariant: Color(0xff3f3336),
      outline: Color(0xff5d4f53),
      outlineVariant: Color(0xff79696d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e31),
      inversePrimary: Color(0xffffb0cb),
      primaryFixed: Color(0xff9c5871),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff804159),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff9a5876),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff7e415d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff926321),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff764c07),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd2c3c6),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f3),
      surfaceContainer: Color(0xfff4e4e7),
      surfaceContainerHigh: Color(0xffe9d9dc),
      surfaceContainerHighest: Color(0xffddced1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4f1830),
      surfaceTint: Color(0xff8b4a63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff72354d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4e1933),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff713551),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff412600),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff684100),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff511a15),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff76362f),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff35292c),
      outlineVariant: Color(0xff534649),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e31),
      inversePrimary: Color(0xffffb0cb),
      primaryFixed: Color(0xff72354d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff571f36),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff713551),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff561f3a),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff684100),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff492c00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc4b5b8),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdedf0),
      surfaceContainer: Color(0xffefdfe2),
      surfaceContainerHigh: Color(0xffe0d1d4),
      surfaceContainerHighest: Color(0xffd2c3c6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb0cb),
      surfaceTint: Color(0xffffb0cb),
      onPrimary: Color(0xff541d34),
      primaryContainer: Color(0xff6f334b),
      onPrimaryContainer: Color(0xffffd9e3),
      secondary: Color(0xffffb0d0),
      onSecondary: Color(0xff531d38),
      secondaryContainer: Color(0xff6e334f),
      onSecondaryContainer: Color(0xffffd8e6),
      tertiary: Color(0xfff7bb70),
      onTertiary: Color(0xff462a00),
      tertiaryContainer: Color(0xff653e00),
      onTertiaryContainer: Color(0xffffddb7),
      error: Color(0xffffb4ab),
      onError: Color(0xff561e19),
      errorContainer: Color(0xff73332d),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff191114),
      onSurface: Color(0xffefdfe2),
      onSurfaceVariant: Color(0xffd5c2c6),
      outline: Color(0xff9e8c91),
      outlineVariant: Color(0xff514347),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe2),
      inversePrimary: Color(0xff8b4a63),
      primaryFixed: Color(0xffffd9e3),
      onPrimaryFixed: Color(0xff39071f),
      primaryFixedDim: Color(0xffffb0cb),
      onPrimaryFixedVariant: Color(0xff6f334b),
      secondaryFixed: Color(0xffffd8e6),
      onSecondaryFixed: Color(0xff390722),
      secondaryFixedDim: Color(0xffffb0d0),
      onSecondaryFixedVariant: Color(0xff6e334f),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff2a1700),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff653e00),
      surfaceDim: Color(0xff191114),
      surfaceBright: Color(0xff403739),
      surfaceContainerLowest: Color(0xff130c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd0de),
      surfaceTint: Color(0xffffb0cb),
      onPrimary: Color(0xff461229),
      primaryContainer: Color(0xffc57b95),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd0e1),
      onSecondary: Color(0xff46122d),
      secondaryContainer: Color(0xffc37b9a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd5a5),
      onTertiary: Color(0xff382100),
      tertiaryContainer: Color(0xffbb8641),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff48130f),
      errorContainer: Color(0xffcc7b72),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191114),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffecd7dc),
      outline: Color(0xffc0adb2),
      outlineVariant: Color(0xff9d8c90),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe2),
      inversePrimary: Color(0xff70344c),
      primaryFixed: Color(0xffffd9e3),
      onPrimaryFixed: Color(0xff2b0014),
      primaryFixedDim: Color(0xffffb0cb),
      onPrimaryFixedVariant: Color(0xff5b223a),
      secondaryFixed: Color(0xffffd8e6),
      onSecondaryFixed: Color(0xff2a0017),
      secondaryFixedDim: Color(0xffffb0d0),
      onSecondaryFixedVariant: Color(0xff5a233e),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff1c0e00),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff4e2f00),
      surfaceDim: Color(0xff191114),
      surfaceBright: Color(0xff4c4244),
      surfaceContainerLowest: Color(0xff0c0608),
      surfaceContainerLow: Color(0xff241b1e),
      surfaceContainer: Color(0xff2e2628),
      surfaceContainerHigh: Color(0xff3a3033),
      surfaceContainerHighest: Color(0xff453b3e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffebef),
      surfaceTint: Color(0xffffb0cb),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfffdabc7),
      onPrimaryContainer: Color(0xff20000e),
      secondary: Color(0xffffebf0),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xfffbaccc),
      onSecondaryContainer: Color(0xff200010),
      tertiary: Color(0xffffeddc),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff3b86d),
      onTertiaryContainer: Color(0xff140900),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea5),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff191114),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffebef),
      outlineVariant: Color(0xffd1bec2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe2),
      inversePrimary: Color(0xff70344c),
      primaryFixed: Color(0xffffd9e3),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb0cb),
      onPrimaryFixedVariant: Color(0xff2b0014),
      secondaryFixed: Color(0xffffd8e6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb0d0),
      onSecondaryFixedVariant: Color(0xff2a0017),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff1c0e00),
      surfaceDim: Color(0xff191114),
      surfaceBright: Color(0xff584d50),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff261d20),
      surfaceContainer: Color(0xff372e31),
      surfaceContainerHigh: Color(0xff43393b),
      surfaceContainerHighest: Color(0xff4e4447),
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
     scaffoldBackgroundColor: colorScheme.primary,
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
