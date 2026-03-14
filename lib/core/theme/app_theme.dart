import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xff054239);
  static const Color tertiaryColor = Color.fromARGB(255, 12, 102, 105);
  static const Color secondaryColor = Color(0xffb9a779);
  static const Color errorColor = Colors.redAccent;
  static const Color surfaceColor = Color(0xffffffff);
  static const Color backgroundColor = Color(0xffedebe0);
  static const Color onPrimaryColor = Colors.white;
  static const Color onSecondaryColor = Colors.black;
  static const Color onSurfaceColor = Color(0xff161616);
  static const Color onErrorColor = Colors.white;

  // Spacing
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 12.0;
  static const double spacingL = 16.0;
  static const double spacingXL = 20.0;
  static const double spacingXXL = 24.0;
  static const double spacingXXXL = 32.0;

  // Border Radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 20.0;
  static const double radiusXXL = 24.0;

  // Elevation
  static const double elevationS = 2.0;
  static const double elevationM = 4.0;
  static const double elevationL = 8.0;
  static const double elevationXL = 12.0;

  // Animation Durations
  static const Duration animationFast = Duration(milliseconds: 200);
  static const Duration animationNormal = Duration(milliseconds: 300);
  static const Duration animationSlow = Duration(milliseconds: 500);

  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Qomra',
      useMaterial3: true,

      // Color Scheme
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        tertiary: tertiaryColor,
        onPrimary: onPrimaryColor,
        secondary: secondaryColor,
        onSecondary: onSecondaryColor,
        error: errorColor,
        onError: onErrorColor,
        surface: surfaceColor,
        onSurface: onSurfaceColor,
      ),

      // Scaffold
      scaffoldBackgroundColor: backgroundColor,

      // App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: onPrimaryColor,
        centerTitle: true,
        elevation: elevationM,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(radiusL)),
        ),
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: onPrimaryColor,
        ),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        elevation: elevationM,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusM)),
        margin: const EdgeInsets.symmetric(horizontal: spacingL, vertical: spacingS),
        color: surfaceColor,
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: spacingL, vertical: spacingM),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusM),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusM),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusM),
          borderSide: const BorderSide(color: primaryColor, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusM),
          borderSide: const BorderSide(color: errorColor, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusM),
          borderSide: const BorderSide(color: errorColor, width: 2.0),
        ),
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14.sp),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor,
          elevation: elevationM,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusM)),
          padding: const EdgeInsets.symmetric(horizontal: spacingXL, vertical: spacingM),
          textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,

        foregroundColor: onPrimaryColor,
        elevation: elevationL,
        shape: CircleBorder(),
      ),

      // Drawer Theme
      drawerTheme: const DrawerThemeData(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(radiusL),
            bottomRight: Radius.circular(radiusL),
          ),
        ),
      ),

      // List Tile Theme
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: spacingL, vertical: spacingS),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusS)),
        tileColor: surfaceColor,
        selectedTileColor: primaryColor.withOpacity(0.1),
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: Colors.grey.withOpacity(0.3),
        thickness: 1.0,
        space: 1.0,
      ),

      // Icon Theme
      iconTheme: const IconThemeData(color: onSurfaceColor, size: 24.0),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w900,
          color: onSurfaceColor,
        ),
        displayMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w800,
          color: onSurfaceColor,
        ),
        displaySmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          color: onSurfaceColor,
        ),
        headlineLarge: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w700,
          color: onSurfaceColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: onSurfaceColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: onSurfaceColor,
        ),
        titleLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: onSurfaceColor),
        titleMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: onSurfaceColor),
        titleSmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: onSurfaceColor),
        bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: onSurfaceColor),
        bodyMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: onSurfaceColor),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: onSurfaceColor.withOpacity(0.7),
        ),
        labelLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: onSurfaceColor),
        labelMedium: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: onSurfaceColor),
        labelSmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          color: onSurfaceColor.withOpacity(0.7),
        ),
      ),
    );
  }

  // Animation curves
  static const Curve animationCurve = Curves.easeInOutCubic;
  static const Curve bounceCurve = Curves.elasticOut;
  static const Curve slideCurve = Curves.easeOutQuart;

  // Shadow styles
  static List<BoxShadow> get cardShadow => [
    BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 8, offset: const Offset(0, 2)),
    BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 4, offset: const Offset(0, 1)),
  ];

  static List<BoxShadow> get elevatedCardShadow => [
    BoxShadow(color: Colors.black.withOpacity(0.12), blurRadius: 12, offset: const Offset(0, 4)),
    BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 6, offset: const Offset(0, 2)),
  ];

  static List<BoxShadow> get buttonShadow => [
    BoxShadow(color: primaryColor.withOpacity(0.3), blurRadius: 8, offset: const Offset(0, 4)),
  ];
}
