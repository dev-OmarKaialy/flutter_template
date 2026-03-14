import 'package:equatable/equatable.dart';

/// Domain entity representing the counter value.
///
/// Entities are pure business objects and should be free from UI/framework
/// concerns. They are shared across use cases and repositories.
class CounterEntity extends Equatable {
  /// Creates a domain counter entity.
  const CounterEntity({required this.value});

  /// Numeric value displayed in the UI.
  final int value;

  @override
  List<Object?> get props => [value];
}
