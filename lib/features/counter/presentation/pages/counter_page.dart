import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

/// Demo page for the counter feature.
///
/// The page stays intentionally minimal while still showing the full BLoC flow:
/// state rendering, event dispatching, and error handling.
class CounterPage extends StatelessWidget {
  /// Creates the counter page.
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clean Architecture Template')),
      body: BlocListener<CounterBloc, CounterState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage && current.errorMessage != null,
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        },
        child: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state.status == CounterStatus.loading) {
                return const CircularProgressIndicator();
              }

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Counter value'),
                  const SizedBox(height: 8),
                  Text('${state.value}', style: Theme.of(context).textTheme.displaySmall),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FloatingActionButton(
                        heroTag: 'decrement',
                        onPressed: () {
                          context.read<CounterBloc>().add(const CounterDecrementPressed());
                        },
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        heroTag: 'increment',
                        onPressed: () {
                          context.read<CounterBloc>().add(const CounterIncrementPressed());
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
