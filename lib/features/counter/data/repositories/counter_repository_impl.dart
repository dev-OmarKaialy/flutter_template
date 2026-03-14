import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/unified_api/error/failure.dart';
import '../../domain/entities/counter_entity.dart';
import '../../domain/repositories/counter_repository.dart';
import '../datasources/counter_local_data_source.dart';

/// Repository implementation for the counter feature.
///
/// Maps low-level data source results to domain entities and handles failures.
@Injectable(as: CounterRepository)
class CounterRepositoryImpl implements CounterRepository {
  /// Creates repository with required local data source.
  CounterRepositoryImpl({required CounterLocalDataSource localDataSource})
    : _localDataSource = localDataSource;

  final CounterLocalDataSource _localDataSource;

  @override
  Future<Either<Failure, CounterEntity>> getCounter() async {
    return _execute(_localDataSource.getCounter);
  }

  @override
  Future<Either<Failure, CounterEntity>> incrementCounter() async {
    return _execute(_localDataSource.incrementCounter);
  }

  @override
  Future<Either<Failure, CounterEntity>> decrementCounter() async {
    return _execute(_localDataSource.decrementCounter);
  }

  Future<Either<Failure, CounterEntity>> _execute(Future<int> Function() operation) async {
    try {
      final value = await operation();
      return Right(CounterEntity(value: value));
    } catch (error) {
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
