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
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const TemplateApp());
}
