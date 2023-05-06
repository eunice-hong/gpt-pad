part of 'theme.dart';

/// App theme
class AppTheme {
  /// Standard [ThemeData] for App UI
  static ThemeData get standard {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.springLeaf,
        secondary: AppColors.blueHorizon,
        background: AppColors.pearlGray,
      ),
      textTheme: _textTheme,
    );
  }

  /// Dark [ThemeData] for App UI
  static ThemeData get dark {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.springLeaf,
        secondary: AppColors.blueHorizon,
        background: AppColors.midnightBlue,
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
