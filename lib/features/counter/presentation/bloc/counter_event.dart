part of 'counter_bloc.dart';

/// Base class for all counter events.
sealed class CounterEvent extends Equatable {
  /// Creates an immutable counter event.
  const CounterEvent();

  @override
  List<Object?> get props => [];
}

/// Loads the initial counter value when the page starts.
final class CounterStarted extends CounterEvent {
  /// Creates the start event.
  const CounterStarted();
}

/// Triggered when user taps the increment button.
final class CounterIncrementPressed extends CounterEvent {
  /// Creates increment event.
  const CounterIncrementPressed();
}

/// Triggered when user taps the decrement button.
final class CounterDecrementPressed extends CounterEvent {
  /// Creates decrement event.
  const CounterDecrementPressed();
}
