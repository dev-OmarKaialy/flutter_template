import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/decrement_counter.dart';
import '../../domain/usecases/get_counter.dart';
import '../../domain/usecases/increment_counter.dart';

part 'counter_event.dart';
part 'counter_state.dart';

/// BLoC for the counter presentation feature.
///
/// It coordinates user intents (events) with domain actions (use cases) and
/// emits immutable UI states.
@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  /// Creates a `CounterBloc` with all required use cases.
  CounterBloc({
    required GetCounter getCounter,
    required IncrementCounter incrementCounter,
    required DecrementCounter decrementCounter,
  }) : _getCounter = getCounter,
       _incrementCounter = incrementCounter,
       _decrementCounter = decrementCounter,
       super(const CounterState()) {
    on<CounterStarted>(_onStarted);
    on<CounterIncrementPressed>(_onIncrementPressed);
    on<CounterDecrementPressed>(_onDecrementPressed);
  }

  final GetCounter _getCounter;
  final IncrementCounter _incrementCounter;
  final DecrementCounter _decrementCounter;

  Future<void> _onStarted(CounterStarted event, Emitter<CounterState> emit) async {
    emit(state.copyWith(status: CounterStatus.loading, clearError: true));

    final result = await _getCounter(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: CounterStatus.failure, errorMessage: failure.message)),
      (entity) => emit(
        state.copyWith(value: entity.value, status: CounterStatus.success, clearError: true),
      ),
    );
  }

  Future<void> _onIncrementPressed(
    CounterIncrementPressed event,
    Emitter<CounterState> emit,
  ) async {
    final result = await _incrementCounter(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: CounterStatus.failure, errorMessage: failure.message)),
      (entity) => emit(
        state.copyWith(value: entity.value, status: CounterStatus.success, clearError: true),
      ),
    );
  }

  Future<void> _onDecrementPressed(
    CounterDecrementPressed event,
    Emitter<CounterState> emit,
  ) async {
    final result = await _decrementCounter(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: CounterStatus.failure, errorMessage: failure.message)),
      (entity) => emit(
        state.copyWith(value: entity.value, status: CounterStatus.success, clearError: true),
      ),
    );
  }
}
