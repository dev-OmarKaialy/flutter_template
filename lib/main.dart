import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/services/dependencies.dart';

/// Entry point for the team template.
///
/// Bootstrapping order:
/// 1) initialize framework bindings
/// 2) register shared/core dependencies
/// 3) register feature-level dependencies
/// 4) run the app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      saveLocale: true,
      startLocale: Locale('ar'),
      child: const TemplateApp(),
    ),
  );
}
