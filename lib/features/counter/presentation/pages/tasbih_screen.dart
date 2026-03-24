import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/core/extensions/context_extensions.dart';
import 'package:template/core/services/dependencies.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../asmaa_allah/presentation/pages/asmaa_allah_screen.dart';
import '../bloc/counter_bloc.dart';

class TasbihScreen extends StatefulWidget {
  const TasbihScreen({super.key});

  @override
  State<TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  static const int _targetPerRound = 33;
  final int _selectedDhikrIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
      bloc: getIt<CounterBloc>(),
      listener: (context, state) {
        if (state.status == CounterStatus.failure && state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },
      builder: (context, state) {
        final value = state.value;
        final progressInRound = value % _targetPerRound;
        final round = (value ~/ _targetPerRound) + 1;
        final progress = progressInRound / _targetPerRound;

        return Scaffold(
          appBar: AppBar(title: const Text('Tasbih')),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 120),
                ListTile(
                  tileColor: Colors.transparent,

                  leading: Icon(Icons.repeat, color: context.theme.colorScheme.onPrimary),
                  title: Text(
                    'المسبحة',
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Already on this screen, do nothing
                  },
                ),
                ListTile(
                  tileColor: Colors.transparent,

                  leading: Icon(
                    Icons.format_list_bulleted,
                    color: context.theme.colorScheme.onPrimary,
                  ),
                  title: Text(
                    'أسماء الله الحسنى',
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const AsmaaAllahScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 12.h),
                  Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        children: [
                          Text('Current count', style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(height: 8.h),
                          Text(
                            '$value',
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Round $round - $progressInRound / $_targetPerRound',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 12.h),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: LinearProgressIndicator(
                              minHeight: 8.h,
                              value: progress,
                              backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.15),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                AppTheme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: InkWell(
                      onTap: state.status == CounterStatus.loading
                          ? null
                          : () => context.read<CounterBloc>().add(const CounterIncrementPressed()),
                      borderRadius: BorderRadius.circular(120.r),
                      child: Ink(
                        width: 220.w,
                        height: 220.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [AppTheme.primaryColor, AppTheme.tertiaryColor],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: AppTheme.buttonShadow,
                        ),
                        child: Center(
                          child: Text(
                            'Tap',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: value == 0
                              ? null
                              : () => context.read<CounterBloc>().add(
                                  const CounterDecrementPressed(),
                                ),
                          icon: const Icon(Icons.undo),
                          label: const Text('Undo'),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: value == 0 ? null : () => _resetCounter(context, value),
                          icon: const Icon(Icons.refresh),
                          label: const Text('Reset'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _resetCounter(BuildContext context, int currentValue) {
    final bloc = context.read<CounterBloc>();
    for (var i = 0; i < currentValue; i++) {
      bloc.add(const CounterDecrementPressed());
    }
  }
}
