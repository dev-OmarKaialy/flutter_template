import 'package:dartz/dartz.dart';

import '../../../../core/unified_api/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/counter_entity.dart';
import '../repositories/counter_repository.dart';

/// Use case that decrements the counter value.
class DecrementCounter extends UseCase<CounterEntity, NoParams> {
  /// Creates this use case with the required repository.
  DecrementCounter(this._repository);

  final CounterRepository _repository;

  @override
  Future<Either<Failure, CounterEntity>> call(NoParams params) {
    return _repository.decrementCounter();
  }
}
