part of 'theme.dart';

const _fontPackage = 'ui';

/// Different [TextStyle] used in the app
abstract class AppTextStyle {
  /// Font size: 28 | Color: white
  static const displayLarge = TextStyle(
    fontSize: 28,
    package: _fontPackage,
    color: AppColors.black,
  );

  /// Font size: 24 | Color: white
  static const displayMedium = TextStyle(
    fontSize: 24,
    package: _fontPackage,
    color: AppColors.black,
  );

  /// Font size: 20 | Color: darkBlue
  static const displaySmall = TextStyle(
    color: AppColors.independence,
    fontSize: 20,
    package: _fontPackage,
    fontWeight: FontWeight.bold,
  );

  /// Font size: 16 | Color: white
  static const headlineMedium = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    package: _fontPackage,
  );

  /// Font size: 214| Color: white
  static const headlineSmall = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    package: _fontPackage,
  );

  /// Font size: 12 | Color: white
  static const titleMedium = TextStyle(
    fontSize: 12,
    package: _fontPackage,
    color: AppColors.yellow,
  );
}
