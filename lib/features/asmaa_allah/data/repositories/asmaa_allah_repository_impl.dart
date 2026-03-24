import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:template/core/unified_api/error/error_handeler.dart';
import 'package:template/core/unified_api/error/failure.dart';

import '../../domain/repositories/asmaa_allah_repository.dart';
import '../datasources/asmaa_allah_remote_datasource.dart';
import '../models/asmaa_allah_model.dart';

@Injectable(as: AsmaaAllahRepository)
class AsmaaAllahRepositoryImpl with HandlingException implements AsmaaAllahRepository {
  final RemoteAsmaaDatasource remoteDataSource;

  AsmaaAllahRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, AsmaaAllahModel>> getAsmaaAllah() {
    return wrapHandling(
      tryCall: () async {
        return await remoteDataSource.getAsmaaAllah();
      },
    );
  }
}
