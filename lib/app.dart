import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/features/asmaa_allah/presentation/pages/asmaa_allah_screen.dart';

import 'core/theme/app_theme.dart';

/// Root widget for the template application.
///
/// The app is intentionally simple and shows how a feature is bootstrapped
/// using Clean Architecture + BLoC with dependency injection.
class TemplateApp extends StatelessWidget {
  /// Creates the root app widget.
  const TemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'Tasbih App',
          theme: AppTheme.lightTheme,
          home: const AsmaaAllahScreen(),
        );
      },
    );
  }
}
