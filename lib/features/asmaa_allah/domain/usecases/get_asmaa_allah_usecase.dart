import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:template/features/asmaa_allah/data/models/asmaa_allah_model.dart';
import 'package:template/features/asmaa_allah/domain/repositories/asmaa_allah_repository.dart';

import '../../../../core/unified_api/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

@injectable
class GetAsmaaAllahUsecase implements UseCase<AsmaaAllahModel, NoParams> {
  final AsmaaAllahRepository repo;

  GetAsmaaAllahUsecase({required this.repo});
  @override
  Future<Either<Failure, AsmaaAllahModel>> call(NoParams params) async {
    return await repo.getAsmaaAllah();
  }
}
