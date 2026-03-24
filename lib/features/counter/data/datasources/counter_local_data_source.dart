import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:template/features/counter/domain/entities/counter_entity.dart';

/// Data source contract for local counter persistence.
///
/// In a real feature, this can be backed by local database or cache.
abstract class CounterLocalDataSource {
  /// Gets the current saved value.
  Future<CounterEntity> getCounter();

  /// Increments and persists the value.
  Future<CounterEntity> incrementCounter();

  /// Decrements and persists the value.
  Future<CounterEntity> decrementCounter();
}

/// In-memory implementation used by the template.
///
/// This keeps the example dependency-free while still showing architecture
/// boundaries and testability.
@Injectable(as: CounterLocalDataSource)
class InMemoryCounterLocalDataSource implements CounterLocalDataSource {
  final FlutterSecureStorage storage;

  InMemoryCounterLocalDataSource({required this.storage});
  @override
  Future<CounterEntity> getCounter() async => CounterEntity(
    value: (int.parse(await storage.read(key: 'counter') ?? '0')),
  );

  @override
  Future<CounterEntity> incrementCounter() async {
    await storage.write(
      key: 'counter',
      value: '${(int.parse(await storage.read(key: 'counter') ?? '0')) + 1}',
    );
    return CounterEntity(
      value: (int.parse(await storage.read(key: 'counter') ?? '0')),
    );
  }

  @override
  Future<CounterEntity> decrementCounter() async {
    final currentValue = int.parse(await storage.read(key: 'counter') ?? '0');
    final nextValue = currentValue > 0 ? currentValue - 1 : 0;

    await storage.write(key: 'counter', value: '$nextValue');

    return CounterEntity(
      value: (int.parse(await storage.read(key: 'counter') ?? '0')),
    );
  }
}
