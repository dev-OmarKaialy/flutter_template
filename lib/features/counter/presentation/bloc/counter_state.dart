part of 'counter_bloc.dart';

/// Lightweight UI status used by `CounterState`.
enum CounterStatus { initial, loading, success, failure }

/// Immutable state consumed by the counter page.
class CounterState extends Equatable {
  /// Creates state with optional value and error details.
  const CounterState({this.value = 0, this.status = CounterStatus.initial, this.errorMessage});

  /// Current counter value displayed in the UI.
  final int value;

  /// Current request status.
  final CounterStatus status;

  /// Optional user-friendly error message.
  final String? errorMessage;

  /// Returns a copy with only provided fields changed.
  CounterState copyWith({
    int? value,
    CounterStatus? status,
    String? errorMessage,
    bool clearError = false,
  }) {
    return CounterState(
      value: value ?? this.value,
      status: status ?? this.status,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }

  @override
  List<Object?> get props => [value, status, errorMessage];
}
