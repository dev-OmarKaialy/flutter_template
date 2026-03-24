import 'package:dartz/dartz.dart';

import '../../../../core/unified_api/error/failure.dart';
import '../../data/models/asmaa_allah_model.dart';

abstract class AsmaaAllahRepository {
  Future<Either<Failure, AsmaaAllahModel>> getAsmaaAllah();
}
