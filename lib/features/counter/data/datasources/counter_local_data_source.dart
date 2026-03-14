import 'package:injectable/injectable.dart';

/// Data source contract for local counter persistence.
///
/// In a real feature, this can be backed by local database or cache.
abstract class CounterLocalDataSource {
  /// Gets the current saved value.
  Future<int> getCounter();

  /// Increments and persists the value.
  Future<int> incrementCounter();

  /// Decrements and persists the value.
  Future<int> decrementCounter();
}

/// In-memory implementation used by the template.
///
/// This keeps the example dependency-free while still showing architecture
/// boundaries and testability.
@Injectable(as: CounterLocalDataSource)
class InMemoryCounterLocalDataSource implements CounterLocalDataSource {
  int _value = 0;

  @override
  Future<int> getCounter() async => _value;

  @override
  Future<int> incrementCounter() async {
    _value += 1;
    return _value;
  }

  @override
  Future<int> decrementCounter() async {
    _value -= 1;
    return _value;
  }
}
