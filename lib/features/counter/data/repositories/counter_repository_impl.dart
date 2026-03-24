import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:template/core/unified_api/error/error_handeler.dart';

import '../../../../core/unified_api/error/failure.dart';
import '../../domain/entities/counter_entity.dart';
import '../../domain/repositories/counter_repository.dart';
import '../datasources/counter_local_data_source.dart';

/// Repository implementation for the counter feature.
///
/// Maps low-level data source results to domain entities and handles failures.
@Injectable(as: CounterRepository)
class CounterRepositoryImpl with HandlingException implements CounterRepository {
  /// Creates repository with required local data source.
  CounterRepositoryImpl({required CounterLocalDataSource localDataSource})
    : _localDataSource = localDataSource;

  final CounterLocalDataSource _localDataSource;

  @override
  Future<Either<Failure, CounterEntity>> getCounter() async {
    return wrapHandling(tryCall: () => _localDataSource.getCounter());
  }

  @override
  Future<Either<Failure, CounterEntity>> incrementCounter() async {
    return wrapHandling(tryCall: () => _localDataSource.incrementCounter());
  }

  @override
  Future<Either<Failure, CounterEntity>> decrementCounter() async {
    return wrapHandling(tryCall: () => _localDataSource.decrementCounter());
  }
}
