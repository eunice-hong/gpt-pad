part of 'theme.dart';

/// App theme
class AppTheme {
  /// Standard [ThemeData] for App UI
  static ThemeData get standard {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.seaSerpent,
        secondary: AppColors.mediumSkyBlue,
      ),
      textTheme: _textTheme,
    );
  }

  static TextTheme get _textTheme {
    return GoogleFonts.fugazOneTextTheme(
      const TextTheme(
        displayLarge: AppTextStyle.displayLarge,
        displayMedium: AppTextStyle.displayMedium,
        displaySmall: AppTextStyle.displaySmall,
        headlineMedium: AppTextStyle.headlineMedium,
        headlineSmall: AppTextStyle.headlineSmall,
        titleMedium: AppTextStyle.titleMedium,
      ),
    );
  }
}
