import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/services/dependencies.dart';
import 'core/theme/app_theme.dart';
import 'features/counter/presentation/bloc/counter_bloc.dart';
import 'features/counter/presentation/pages/counter_page.dart';

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
          debugShowCheckedModeBanner: false,
          title: 'Team Template',
          theme: AppTheme.lightTheme,
          home: BlocProvider(
            create: (_) => getIt<CounterBloc>()..add(const CounterStarted()),
            child: const CounterPage(),
          ),
        );
      },
    );
  }
}
