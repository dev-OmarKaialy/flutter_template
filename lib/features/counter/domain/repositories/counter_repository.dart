import 'package:dartz/dartz.dart';

import '../../../../core/unified_api/error/failure.dart';
import '../entities/counter_entity.dart';

/// Repository contract for all counter operations.
///
/// The domain layer depends on this abstraction, not on data source details.
abstract class CounterRepository {
  /// Reads the current counter value.
  Future<Either<Failure, CounterEntity>> getCounter();

  /// Increments and returns the updated counter value.
  Future<Either<Failure, CounterEntity>> incrementCounter();

  /// Decrements and returns the updated counter value.
  Future<Either<Failure, CounterEntity>> decrementCounter();
}
